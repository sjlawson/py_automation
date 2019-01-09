from behave import fixture, use_fixture
from reporters.junit import JUnitReporter
from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.common.proxy import Proxy as SeleniumProxy, ProxyType
from multiprocessing import Process
from browsermobproxy import Server
from common.proxy import *
import yaml, os, datetime, json, requests, time

if os.path.exists('.env'):
    print('Importing environment from .env...')
    for line in open('.env'):
        var = line.strip().split('=')
        listvals = var[1].split(',')
        if len(var) == 2:
            os.environ[var[0]] = var[1]

if 'VISITOR_SITE_URL' not in os.environ:
    os.environ['VISITOR_SITE_URL'] = 'http://angiesmr2stg.prod.acquia-sites.com'


@fixture
def chrome_performance_logs(context):
    """ yields context browser, also adds common interface for browser performance logs (network) with browserlog() method """
    # -- HINT: @behave.fixture is similar to @contextlib.contextmanager
    method_name = 'chrome'
    caps = getattr(DesiredCapabilities, method_name.upper())
    caps = set_caps(caps, method_name)
    ch_profile = webdriver.ChromeOptions()
    ch_profile.perfLoggingPrefs = {'enableNetwork': True, 'traceCategories': 'performance, devtools.network'}
    ch_profile.add_argument('incognito')
    ch_profile.add_argument('disable-extensions')
    ch_profile.add_argument('auto-open-devtools-for-tabs')
    context.browser = webdriver.Chrome(desired_capabilities=caps, chrome_options=ch_profile)
    context.browserlog = lambda : context.browser.get_log('performance')
    context.browser.implicitly_wait(30)
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()


@fixture
def chrome_native(context):
    caps = DesiredCapabilities.CHROME
    caps = set_caps(caps, 'chrome')
    ch_profile = webdriver.ChromeOptions()
    ch_profile.add_argument('incognito')
    ch_profile.add_argument('disable-extensions')
    ch_profile.add_argument('--proxy-server=%s' % caps['proxy']['httpProxy'])
    context.browser = webdriver.Chrome(desired_capabilities=caps, chrome_options=ch_profile)
    context.browser.implicitly_wait(30)
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()


# @fixture
# def generic_native(context):


@fixture
def chrome_cbt(context):
    desired_cap = {
        'platform': "Mac OS X 10.12",
        'browserName': "chrome"
    }
    username = os.environ['CBT_USER']
    access_key = os.environ['CBT_KEY']
    driver = webdriver.Remote(
        command_executor='https://{}:{}@hub.crossbrowsertesting.com/wd/hub'.format(username, access_key),
        desired_capabilities=desired_cap)
    context.browser = driver
    yield context.browser
    context.browser.quit()


@fixture
def chrome_sauce(context):
    desired_cap = {
        'platform': 'Mac OS X 10.12',
        'browserName': os.environ.get('BROWSERNAME', 'chrome'),
        'version': 'latest',
        'extendedDebugging': True
    }
    username = os.environ['SAUCE_USERNAME']
    access_key = os.environ['SAUCE_ACCESS_KEY']
    driver = webdriver.Remote(
        command_executor='https://{}:{}@ondemand.saucelabs.com/wd/hub'.format(username, access_key),
        desired_capabilities=desired_cap)
    context.browser = driver
    yield context.browser
    context.browser.quit()


def set_caps(caps, method_name):
    PROXY = os.environ.get('PROXY', '127.0.0.1:4545')
    test_client = os.environ.get('TEST_CLIENT', 'Mac OSX 10.12')
    caps['loggingPrefs'] = { 'performance': 'INFO'}
    caps['name'] = 'cqtest_' + str(datetime.datetime.now())
    caps['build'] = '1.0'
    caps['browserName'] = method_name
    # caps['platform'] = test_client
    caps['screenResolution'] = '1366x768'
    # caps['record_video'] = 'true'
    caps['record_network'] = 'true'
    caps['proxy'] = {
        "httpProxy":PROXY,
        "ftpProxy":PROXY,
        "sslProxy":PROXY,
        "noProxy": None,
        "proxyType":"MANUAL",
        "class":"org.openqa.selenium.Proxy",
        "autodetect":False
    }

    return caps

def selenium_browser_firefox(context):
    myProxy = context.proxy_addr
    print(myProxy)
    p = Proxy(client='firefox')
    p.proxyType = ProxyType.MANUAL
    p.httpProxy = myProxy
    p.sslProxy = myProxy
    import selenium
    p = SeleniumProxy({
        "proxy_type": {'ff_value': 1, 'string': 'MANUAL'},
        "httpProxy": myProxy,
        "sslProxy":myProxy,
        "noProxy": ""
    })
    caps = DesiredCapabilities.FIREFOX.copy()

    p.add_to_capabilities(caps)
    context.browser = webdriver.Firefox(capabilities=caps)
    context.browser.implicitly_wait(20)

    yield context.browser
    context.browser.quit()


def selenium_browser_safari(context):
    method_name = 'safari'
    caps = DesiredCapabilities.SAFARI.copy()
    caps = set_caps(caps, method_name)
    context.browser = webdriver.Safari(desired_capabilities=caps)
    yield context.browser
    context.browser.quit()


def proxy_start(proxy_host, proxy_port, mountebank_host, mountebank_port):
    proxy = HTTP(hostname=proxy_host, port=proxy_port, targethost=mountebank_host, targetport=mountebank_port)
    proxy.run()


def bmp_start(bmi_port):
    browsermob_path = os.environ.get('BROWSERMOB_PATH', './../browsermob-proxy/bin/browsermob-proxy')
    browsermob_port = int(os.environ.get('BROWSERMOB_PORT', '9090'))
    browsermob_host = os.environ.get('BROWSERMOB_HOST', '127.0.0.1')
    server = Server(browsermob_path, {'host':browsermob_host,'port':browsermob_port})
    server.remap("api.segment.io", "127.0.0.1:%s" % bmi_port);
    server.start()
    context.bmproxy = server.create_proxy()


def create_mb_imposter(mb_host, mbi_port = None):
    """
    remove old imposter if port is specified, then re-create
    params: mb_host - mountebank host
            mbi_port - mountebank imposter port (random if None)
    """

    imposter_obj = {
        "protocol": "https",
        "name": "Segment imposter",
        "recordRequests": True
    }

    if mbi_port:
        imposter_obj['port'] = mbi_port
        requests.delete(("http://%s:2525/imposters/%s" % (mb_host, mbi_port) ))

    data = json.dumps(imposter_obj)

    r = requests.post(("http://%s:2525/imposters" % mb_host), data=data)
    if r.status_code != 201:
        raise Exception(r.status_code, r.reason)

    response = json.loads(r.content)
    print("Moutebank imposter created at port: %s" % response['port'])

    return int(response['port'])

def before_all(context):
    # setup mountebank imposter
    proxy_host = 'localhost'
    proxy_port = 4545
    context.proxy_addr = '%s:%s' % (proxy_host, proxy_port)
    context.mbi_port = 58111
    context.mb_host = '127.0.0.1'
    mountebank_port = create_mb_imposter(context.mb_host, context.mbi_port)

    ## setup proxy.py
    logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(levelname)s - %(funcName)s:%(lineno)d - %(message)s')
    # context.pyproxy = Process(target=proxy_start, args=[proxy_host, proxy_port, context.mb_host, mountebank_port])
    # context.pyproxy.start()

    # or use browsermob_proxy instead
    # bmp_start(bmi_port = mountebank_port)

    junit_reporter = JUnitReporter(context.config)
    context.config.reporters.append(junit_reporter)

    fixture = os.environ.get('TESTENV','local')
    # use_fixture(selenium_browser_firefox, context)
    # use_fixture(selenium_browser_safari, context)

    if fixture == 'local':
        use_fixture(chrome_native, context)
    elif fixture == 'cbt':
        use_fixture(chrome_cbt, context)
    elif fixture == 'sauce':
        use_fixture(chrome_sauce, context)
    else:
        use_fixture(selenium_browser_firefox, context)

    with open("config/applications.yml", "r") as stream:
        yamlconfig = yaml.load(stream)
        context.appsuites = yamlconfig['appsuites']

    print("Starting Python Selenium Test Framework")

# def after_all(context):
    # context.pyproxy.terminate()
    # context.bmproxy.stop()
