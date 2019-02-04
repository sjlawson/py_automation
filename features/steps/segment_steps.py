from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
import time

# segment_timeout_script = """jQuery(document).ready(function() {
# var set_analytics_timeout = function() {
# if (analytics) {
#   analytics.timeout(600);
# } else {
# setTimeout(set_analytics_timeout, 1000);
# }
# set_analytics_timeout();
# };
# });
# """

# segment_timeout_script = """jQuery(document).ready(function() {analytics.timeout(10);});"""

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

@given('user is on a member site page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1)
    context.browser.execute_script(segment_timeout_script)


@then('a segment track call is sent for a unique field value pair')
def step_impl(context):
    SegmentTestHelper.assert_segment_call_exists(context)

@when('a segment page call is sent for a unique field value pair')
def step_impl(context):
    SegmentTestHelper.assert_segment_call_exists(context)

@then('the segment call contains parameters')
def step_impl(context):
    SegmentTestHelper.assert_segment_call_props(context)

@when('a user performs actions')
def step_impl(context):
    SegmentTestHelper.do_actions(context.browser, get_action_list(context))

@when('a user enters a zip code in a CTA form')
def step_impl(context):
    SegmentTestHelper.do_actions(context.browser, get_action_list(context))

@when('the form is submitted')
def step_impl(context):
    SegmentTestHelper.do_actions(context.browser, get_action_list(context))

@when('the page loads')
def step_impl(context):
    assert "Angie" in context.browser.title

@then('the following element css selector is clickable')
def step_impl(context):
    assert SegmentTestHelper.element_is_clickable(context.browser, context.text) is True

@then('the following element css selectors are clickable')
def step_impl(context):
    for row in context.table:
        assert SegmentTestHelper.element_is_clickable(context.browser, row['selector']) is True


@then('the company logo is in the header')
def step_impl(context):
    elem = context.browser.find_element_by_id("al_logo")
    # print(context.browser.__dict__)
    assert "404 Page Not Found" not in context.browser.page_source
    # assert 1 == 2

def get_action_list(context):
    actions = []
    for row in context.table:
        actions.append(
            {
                'action_method': row['action_method'],
                'action_params': list(map(lambda action_params: action_params.strip() , row['action_params'].split(',')))
            }
        )

    return actions
