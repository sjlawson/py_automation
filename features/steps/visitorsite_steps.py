from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
import time


@given('user is on a visitor site page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
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
    context.url = appsuite_url + '/companylist/plumbing.htm'
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
    context.url = appsuite_url + '/companylist/us/in/fishers/'
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
