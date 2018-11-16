from behave import fixture, use_fixture
from selenium import webdriver
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
    # -- HINT: @behave.fixture is similar to @contextlib.contextmanager
    context.browser = webdriver.Chrome()
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()

def before_all(context):
    # use_fixture(wsgi_server, context, port=8000)
    use_fixture(selenium_browser_chrome, context)
    with open("config/applications.yml", "r") as stream:
        applications = yaml.load(stream)

    context.suiteconf = 'al_visitor_site'
    os.environ['BASE_URL'] = applications['appsuites'][context.suiteconf]['base_url']

    print("Starting Python Flask Selenium Test Framework")
    print("Test environment: %s" % context.suiteconf)
    print("Base URL: ", os.environ['BASE_URL'])


    # def before_feature(context, feature):
#     model.init(environment='test')
