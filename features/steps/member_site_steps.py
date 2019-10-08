from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
import time, os

if 'BASEURL_OVERRIDE' in os.environ and os.environ['BASEURL_OVERRIDE']:
            # context.appsuites['al_visitor_site']['base_url'] = os.environ['BASEURL_OVERRIDE']
            visitor_baseurl = os.environ['BASEURL_OVERRIDE']


@given('a user is on a member site visitor review page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR landing page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site visitor page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1)


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
