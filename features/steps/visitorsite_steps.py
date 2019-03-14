from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
import time


segment_timeout_script = """document.addEventListener('DOMContentLoaded', function(){
    analytics.timeout(500);
}, false);"""

@given('user is on a visitor site page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1)
    context.browser.execute_script(segment_timeout_script)


@given('user is on a visitor site tball page')
def step_impl(context):
    appsuite_env = 'al_visitor_tball'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    SegmentTestHelper.getTBallPage(context)
    time.sleep(1)
    context.browser.execute_script(segment_timeout_script)


@given('user is on a visitor site catnogeo page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/home-inspection.htm?bustARhymeZ'
    context.browser.get(context.url)
    time.sleep(1)
    context.browser.execute_script(segment_timeout_script)


@given('user is on a visitor topcity page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/companylist/indianapolis/?bustA2'
    context.browser.get(context.url)
    time.sleep(1)
    context.browser.execute_script(segment_timeout_script)