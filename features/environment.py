from behave import fixture, use_fixture
from reporters.junit import JUnitReporter
from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
import yaml, os, datetime

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
def selenium_browser_chrome(context):
    """ yields context browser, also adds common interface for browser performance logs (network) with browserlog() method """
    # -- HINT: @behave.fixture is similar to @contextlib.contextmanager
    # PROXY = "127.0.0.1:4545"
    method_name = 'chrome'
    caps = getattr(DesiredCapabilities, method_name.upper())
    caps = set_caps(caps, method_name)
    ch_profile = webdriver.ChromeOptions()
    ch_profile.perfLoggingPrefs = {'enableNetwork': True, 'traceCategories': 'performance, devtools.network'}
    ch_profile.add_argument('incognito')
    ch_profile.add_argument('disable-extensions')
    # ch_profile.add_argument('auto-open-devtools-for-tabs')
    ch_profile.add_argument('disable-browser-side-navigation')
    # ch_profile.add_argument('--proxy-server=%s' % PROXY)

    context.browser = webdriver.Chrome(desired_capabilities=caps, chrome_options=ch_profile)
    context.browserlog = lambda : context.browser.get_log('performance')
    context.browser.implicitly_wait(20)
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()

def set_caps(caps, method_name):
    PROXY = "127.0.0.1:4545"
    test_client = os.environ.get('TEST_CLIENT', 'Mac OSX 10.10')
    caps['loggingPrefs'] = { 'performance': 'INFO'}
    caps['name'] = 'cqtest_' + str(datetime.datetime.now())
    caps['build'] = '1.0'
    caps['browserName'] = method_name
    caps['platform'] = test_client
    caps['screenResolution'] = '1366x768'
    caps['record_video'] = 'true'
    caps['record_network'] = 'true'
    caps['proxy'] = {
        "httpProxy":PROXY,
        "ftpProxy":PROXY,
        "sslProxy":PROXY,
        "noProxy":None,
        "proxyType":"MANUAL",
        "class":"org.openqa.selenium.Proxy",
        "autodetect":False
    }

    return caps

def selenium_browser_firefox(context):
    method_name = 'firefox'
    caps = DesiredCapabilities.FIREFOX.copy()
    caps = set_caps(caps, method_name)
    cbt_user=os.environ.get('CBT_USER', '')
    cbt_key=os.environ.get('CBT_KEY', '')
    print("CBT User: ", cbt_user)
    context.browser = webdriver.Remote(
        desired_capabilities=caps,
        command_executor="http://%s:%s@hub.crossbrowsertesting.com:80/wd/hub"%(cbt_user,cbt_key))
    # context.browserlog = lambda : context.browser.get_log('driver')
    context.browser.implicitly_wait(20)

    yield context.browser
    context.browser.quit()


def before_all(context):
    junit_reporter = JUnitReporter(context.config)
    context.config.reporters.append(junit_reporter)
    # use_fixture(wsgi_server, context, port=8000)
    # use_fixture(selenium_browser_firefox, context)
    use_fixture(selenium_browser_chrome, context)
    with open("config/applications.yml", "r") as stream:
        yamlconfig = yaml.load(stream)
        context.appsuites = yamlconfig['appsuites']

    print("Starting Python Selenium Test Framework")
