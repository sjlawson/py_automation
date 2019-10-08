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


@given('a user is on a member site SR Still Deciding page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/still_deciding?entry_point_id=34138796'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR Working With Pro page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/working_with_pro?entry_point_id=34138795'
    context.browser.get(context.url)
    time.sleep(2)


@given('a user is on a member site SR No Contact page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/no_contact?entry_point_id=34138797'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR No Longer Doing page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/no_longer_doing?entry_point_id=34138798'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a certain member site page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1.5)
