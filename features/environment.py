from behave import fixture, use_fixture
from reporters.junit import JUnitReporter
from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.common.proxy import Proxy as SeleniumProxy, ProxyType
from unittest import TestCase
from common.proxy import *
import yaml, os, datetime, json, requests
from pyvirtualdisplay import Display

if os.path.exists('.env'):
    print('Importing environment from .env...')
    for line in open('.env'):
        var = line.strip().split('=')
        listvals = var[1].split(',')
        if len(var) == 2 and var[0] not in os.environ:
            os.environ[var[0]] = var[1]
    if 'BASEURL_OVERRIDE' not in os.environ or os.environ['BASEURL_OVERRIDE'] == 'none':
        os.environ['BASEURL_OVERRIDE'] = ''

@fixture
def chrome_headless(context):
    caps = DesiredCapabilities.CHROME
    caps['loggingPrefs'] = { 'performance': 'INFO'}
    caps = set_proxy(caps)
    ch_profile = webdriver.ChromeOptions()
    ch_profile.perfLoggingPrefs = {'enableNetwork': True, 'traceCategories': 'performance, devtools.network'}
    ch_profile.add_argument('incognito')
    ch_profile.add_argument('disable-extensions')
    ch_profile.add_argument('--headless')
    ch_profile.add_argument('--no-sandbox')
    ch_profile.add_argument('--disable-dev-shm-usage')
    ch_profile.add_argument('--shm-size=2g')
    ch_profile.add_argument('--proxy-server=%s' % caps['proxy']['httpProxy'])
    display = Display(visible=0, size=(800, 800))
    display.start()
    context.browser = webdriver.Chrome(desired_capabilities=caps, chrome_options=ch_profile, service_args=["--verbose", "--log-path=./qc1.log"])
    context.browserlog = lambda : context.browser.get_log('performance')
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()

@fixture
def chrome_performance_logs(context):
    """ yields context browser, also adds common interface for browser performance logs (network) with browserlog() method
       Does NOT use Mountebank, proxies, or tunnels -- only Chrome performance logs
    """
    # -- HINT: @behave.fixture is similar to @contextlib.contextmanager
    method_name = 'chrome'
    caps = getattr(DesiredCapabilities, method_name.upper())
    caps['loggingPrefs'] = { 'performance': 'INFO'}
    caps['name'] = 'cqtest_' + str(datetime.datetime.now())
    caps['build'] = '1.0'
    caps['browserName'] = 'chrome'
    caps['screenResolution'] = '1366x768'
    caps['record_network'] = 'true'

    ch_profile = webdriver.ChromeOptions()
    ch_profile.perfLoggingPrefs = {'enableNetwork': True, 'traceCategories': 'performance, devtools.network'}
    ch_profile.add_argument('incognito')
    ch_profile.add_argument('disable-extensions')
    ch_profile.add_argument('auto-open-devtools-for-tabs')
    ch_profile.add_argument('--headless')
    context.browser = webdriver.Chrome(desired_capabilities=caps, chrome_options=ch_profile)
    context.browserlog = lambda : context.browser.get_log('performance')
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
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()


@fixture
def remote_cbt(context):
    PROXY = os.environ.get('PROXY', '127.0.0.1:4545')
    desired_cap = {
        'name': context.test_case.id() + ' ' + str(datetime.datetime.now()),
        'platform': os.environ.get('OS_PLATFORM', 'Mac OS X 10.12'),
        'browserName': os.environ.get('BROWSERNAME', 'chrome'),
        'record_video': 'true',
        'record_network': 'true',
    }
    username = os.environ['CBT_USER']
    access_key = os.environ['CBT_KEY']
    context.test_case.api_session = requests.Session()
    context.test_case.api_session.auth = (username, access_key)
    driver = webdriver.Remote(
        command_executor='https://{}:{}@hub.crossbrowsertesting.com/wd/hub'.format(username, access_key),
        desired_capabilities=desired_cap)
    context.browser = driver
    yield context.browser
    context.browser.quit()
    context.test_case.api_session.put('https://crossbrowsertesting.com/api/v3/selenium/' + context.browser.session_id,
                                      data={'action': 'set_score', 'score': context.test_case.test_result})
    print("__browser session__\n", context.browser.session_id)


@fixture
def remote_sauce(context):
    desired_cap = {
        'platform': os.environ.get('OS_PLATFORM', 'Mac OS X 10.12'),
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


def set_proxy(caps):
    PROXY = os.environ.get('PROXY', '127.0.0.1:4545')
    test_client = os.environ.get('OS_PLATFORM', 'Mac OSX 10.12')
    caps['loggingPrefs'] = { 'performance': 'INFO'}
    caps['name'] = 'cqtest_' + str(datetime.datetime.now())
    caps['build'] = '1.0'
    caps['browserName'] = method_name
    # caps['platform'] = test_client
    caps['screenResolution'] = '1366x768'
    caps['record_video'] = 'true'
    caps['record_network'] = 'true'
    caps['proxy'] = {
        "httpProxy": PROXY,
        "ftpProxy": PROXY,
        "sslProxy": PROXY,
        "noProxy": None,
        "proxyType": "MANUAL",
        "class": "org.openqa.selenium.Proxy",
        "autodetect": False
    }

    return caps


def set_caps(caps, method_name):
    test_client = os.environ.get('TEST_CLIENT', 'Mac OSX 10.12')
    caps['loggingPrefs'] = { 'performance': 'INFO'}
    caps['name'] = 'cqtest_' + str(datetime.datetime.now())
    caps['build'] = '1.0'
    caps['browserName'] = method_name
    caps['screenResolution'] = '1366x768'
    caps['record_video'] = 'true'
    caps['record_network'] = 'true'
    caps = set_proxy(caps)

    return caps


def selenium_browser_firefox(context):
    myProxy = context.proxy_addr
    print(myProxy)
    p = Proxy(client='firefox')
    p.proxyType = ProxyType.MANUAL
    p.httpProxy = myProxy
    p.sslProxy = myProxy
    p = SeleniumProxy({
        "proxy_type": {'ff_value': 1, 'string': 'MANUAL'},
        "httpProxy": myProxy,
        "sslProxy":myProxy,
        "noProxy": ""
    })
    caps = DesiredCapabilities.FIREFOX.copy()

    p.add_to_capabilities(caps)
    context.browser = webdriver.Firefox(capabilities=caps)

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


def before_scenario(context, scenario):
    """Clear impostor between scenarios to prevent data conflicts"""
    if context.fixture != 'noproxy':
        create_mb_imposter(context.mb_host, context.mbi_port)


def before_all(context):
    context.test_case = TestCase()
    context.test_case.test_result = 'fail'
    # setup mountebank imposter
    context.fixture = os.environ.get('TESTENV','noproxy')
    context.test_result = None
    proxy_host = 'localhost'
    proxy_port = int(os.environ.get('PYPROXY_PORT', 4545))
    context.proxy_addr = '%s:%s' % (proxy_host, proxy_port)
    context.mbi_port = int(os.environ.get('MBI_PORT', 58111))
    context.mb_host = os.environ.get('MB_HOST', '127.0.0.1')
    browsername = os.environ.get('BROWSERNAME', 'chrome')
    logging.basicConfig(level=logging.INFO,
                        format='%(asctime)s - %(levelname)s - %(funcName)s:%(lineno)d - %(message)s')

    junit_reporter = JUnitReporter(context.config)
    context.config.reporters.append(junit_reporter)

    context.noproxy = False
    if context.fixture == 'noproxy':
        use_fixture(chrome_performance_logs, context)
        context.noproxy = True
    elif context.fixture == 'headless' and browsername == 'chrome':
        use_fixture(chrome_headless, context)
    elif context.fixture == 'headless' and browsername == 'firefox':
        use_fixture(selenium_browser_firefox, context)
    elif context.fixture == 'local':
        use_fixture(chrome_native, context)
    elif context.fixture == 'cbt':
        use_fixture(remote_cbt, context)
    elif context.fixture == 'sauce':
        use_fixture(remote_sauce, context)
    else:
        use_fixture(chrome_native, context)

    with open("config/applications.yml", "r") as stream:
        yamlconfig = yaml.load(stream)
        context.appsuites = yamlconfig['appsuites']

    # if override is set, it's set for ALL because it's meant for specific runs. Scheduled jobs should not use this.
    if os.environ['BASEURL_OVERRIDE']:
        for key in context.appsuites.keys():
            context.appsuites[key]['base_url'] = os.environ['BASEURL_OVERRIDE']

    print("Starting Python Selenium Test Framework")


def after_all(context):
    with open('reports/test-results.xml', 'r+') as f:
        content = f.read()
        f.seek(0, 0)
        f.write('<testsuites>' + '\n' + content + '\n' + '</testsuites>')
