from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
import time, os

if 'BASEURL_OVERRIDE' in os.environ and os.environ['BASEURL_OVERRIDE']:
            # context.appsuites['al_visitor_site']['base_url'] = os.environ['BASEURL_OVERRIDE']
            visitor_baseurl = os.environ['BASEURL_OVERRIDE']

@given('user is on a visitor site page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1)


@given('a user is on a member site visitor review page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1)


@given('a user is on a member site visitor page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor site tball page')
def step_impl(context):
    appsuite_env = 'al_visitor_tball'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    SegmentTestHelper.getTBallPage(context)
    time.sleep(1)


@given('user is on visitor site page with path "{path}"')
def step_impl(context, path):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + path
    context.browser.get(context.url)


@given('user is on a visitor site tball nearme landing page')
def step_impl(context):
    appsuite_env = 'al_visitor_tball'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/nearme/'
    SegmentTestHelper.getTBallPage(context)
    time.sleep(1)


@given('user is on the visitor site comnpanylist page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor site catnogeo page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/drywall.htm'
    context.browser.get(context.url)
    time.sleep(1)

@given('user is on a visitor site non-overlap catnogeo page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/eye-care.htm'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor site geocat page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/denver/roofing.htm'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor topcity page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/indianapolis/'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor city page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/us/mi/drummond-island/'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor state page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/us/mi/'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on the visitor site photos page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/photos/'
    context.browser.get(context.url)
    time.sleep(2)


@given('user is on the visitor site subvertical page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/lights/'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor site leaf advertiser page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/us/co/longmont/ace-of-diamonds-painting-reviews-3623201.htm'
    context.browser.get(context.url)
    time.sleep(1)

@given('user is on a visitor site leaf non advertiser page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/us/ga/cartersville/1-oak-roofing-reviews-9205981.htm'
    context.browser.get(context.url)
    time.sleep(1)

@then('the title of link with id "{link_id}" is "{linktitle}"')
def step_impl(context, link_id, linktitle):
    selector = "id: %s" % link_id
    element = SegmentTestHelper.get_webdriver_element(context.browser, selector, 0)
    actual = element.get_attribute('title')
    try:
        assert actual == linktitle
        context.test_case.test_result = 'pass'
    except AssertionError as ae:
        context.test_case.test_result = 'fail'
        raise AssertionError('Expecting title, %s, for link_id %s, got %s' % (linktitle, link_id, actual))

@then('we wait "{seconds}" seconds for the next page to load')
def step_impl(context, seconds):
    time.sleep(int(seconds))

@then('the landing URL contains "{url}"')
def step_impl(context, url):
    current_url = context.browser.current_url
    try:
        assert url in current_url
        context.test_case.test_result = 'pass'
    except AssertionError as ae:
        context.test_case.test_result = 'fail'
        raise AssertionError('Did not find %s in %s' % (url, current_url))
