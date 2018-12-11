from behave import fixture, use_fixture
from reporters.junit import JUnitReporter
from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
import yaml, os

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
    method_name = 'chrome'
    d = getattr(DesiredCapabilities, method_name.upper())
    d['loggingPrefs'] = { 'browser':'ALL','driver': 'ALL','performance': 'ALL'}
    ch_profile = webdriver.ChromeOptions()
    ch_profile.perfLoggingPrefs = {'enableNetwork': True, 'traceCategories': 'performance, devtools.network'}
    ch_profile.add_argument('incognito')
    ch_profile.add_argument('disable-extensions')
    # ch_profile.add_argument('auto-open-devtools-for-tabs')
    ch_profile.add_argument('disable-browser-side-navigation')

    context.browser = webdriver.Chrome(desired_capabilities=d, chrome_options=ch_profile)
    context.browserlog = lambda : context.browser.get_log('performance')
    context.browser.implicitly_wait(20)
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()


def before_all(context):
    junit_reporter = JUnitReporter(context.config)
    context.config.reporters.append(junit_reporter)
    # use_fixture(wsgi_server, context, port=8000)
    use_fixture(selenium_browser_chrome, context)
    with open("config/applications.yml", "r") as stream:
        yamlconfig = yaml.load(stream)
        context.appsuites = yamlconfig['appsuites']

    print("Starting Python Selenium Test Framework")
