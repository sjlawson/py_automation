from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
import time


segment_timeout_script = """document.addEventListener('DOMContentLoaded', function(){
    analytics.timeout(500);
}, false);"""



@given('user is on a member site page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1)
    context.browser.execute_script(segment_timeout_script)


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


@when('a user clicks on "{pageLink}"')
def step_impl(context, pageLink):
    actions = [
        {
            'action_method': 'click',
            'action_params': [pageLink.strip()]
        }
    ]
    SegmentTestHelper.do_actions(context.browser, actions, 10)


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
    assert "404 Page Not Found" not in context.browser.page_source


def get_action_list(context):
    actions = []
    for row in context.table:
        actions.append(
            {
                'action_method': row['action_method'],
                'action_params': list(map(lambda action_params: action_params.strip(), row['action_params'].split(',')))
            }
        )

    return actions
