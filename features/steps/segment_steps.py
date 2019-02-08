from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper


@given('user is on a visitor site page')
def step_impl(context):
    appsuite_env = 'al_visitor_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)

@given('user is on a member site page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)

@given('user is on a member site review page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url'] + '/app/reviews'
    context.url = appsuite_url + context.text
    context.browser.get(context.url)

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
