from behave import given, then, when
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper

@given('user is logged into the member site')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.browser.get(appsuite_url)
    username_box = context.browser.find_element(By.ID, 'login--login-email')
    ActionChains(context.browser).move_to_element(username_box).click().send_keys('joshua.king@homeadvisor.com').perform()
    password_box = context.browser.find_element(By.ID, 'login--login-password')
    ActionChains(context.browser).move_to_element(password_box).click().send_keys('testtest').perform()
    submit_button = context.browser.find_element(By.ID, 'login--login-button')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()

@then('the member landing page is loaded')
def step_impl(context):
    welcome_message = context.browser.find_element(By.ID, 'search-panel_welcome-msg')
    assert bool(welcome_message)

@then('they are logged out')
def step_impl(context):
    sign_in = context.browser.find_element(By.CLASS_NAME, 'login--header-text-signin')
    assert bool(sign_in)
  
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
