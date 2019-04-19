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


@given('user is on a visitor site catnogeo page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/home-inspection.htm?bustARhymeZ'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor topcity page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/indianapolis/?bustA2'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor city page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/us/in/fishers?bustA32'
    context.browser.get(context.url)
    time.sleep(1)


@given('user is on a visitor state page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/us/mi/?bustSDF'
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
