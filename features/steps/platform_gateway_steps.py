from behave import given, then, when
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper
from faker import Faker
import time

@given('user is logged into the member site')
def step_impl(context):
    context.browser.delete_all_cookies()
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url'] + '/member/login'
    context.browser.get(appsuite_url)
    username_box = context.browser.find_element(By.ID, 'login--login-email')
    ActionChains(context.browser).move_to_element(username_box).click().send_keys(context.appsuites[appsuite_env]['test_username']).perform()
    password_box = context.browser.find_element(By.ID, 'login--login-password')
    ActionChains(context.browser).move_to_element(password_box).click().send_keys(context.appsuites[appsuite_env]['test_password']).perform()
    submit_button = context.browser.find_element(By.ID, 'login--login-button')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()

@given('user is on the sign up page')
def step_impl(context):
    context.browser.delete_all_cookies()
    appsuite_env = 'al_member_site'
    signup_url = context.appsuites[appsuite_env]['base_url'] + '/app/signup'
    context.browser.get(signup_url)

@when('the user creates a new account')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    username_box = context.browser.find_element(By.ID, 'signup--signup-email')
    ActionChains(context.browser).move_to_element(username_box).click().send_keys(data_generator.email()).perform()
    password_box = context.browser.find_element(By.ID, 'signup--signup-password')
    ActionChains(context.browser).move_to_element(password_box).click().send_keys('testtest1234').perform()
    membership_checkbox = context.browser.find_element(By.ID, 'signup--signup-membership-agreement')
    ActionChains(context.browser).move_to_element(membership_checkbox).click().perform()
    submit_button = context.browser.find_element(By.ID, 'signup--signup-continue')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()

@when('the user enters geographic data')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    firstname_box = context.browser.find_element(By.ID, 'address-collection--first-name')
    ActionChains(context.browser).move_to_element(firstname_box).click().send_keys(data_generator.first_name()).perform()
    password_box = context.browser.find_element(By.ID, 'address-collection--last-name')
    ActionChains(context.browser).move_to_element(password_box).click().send_keys(data_generator.last_name()).perform()
    address_box1 = context.browser.find_element(By.ID, 'address-component--first-line')
    ActionChains(context.browser).move_to_element(address_box1).click().send_keys(data_generator.street_address()).perform()
    if (current_time % 2):
        address_box2 = context.browser.find_element(By.ID, 'address-component--second-line')
        ActionChains(context.browser).move_to_element(address_box2).click().send_keys(data_generator.secondary_address()).perform()
    city_box = context.browser.find_element(By.ID, 'address-component--city')
    ActionChains(context.browser).move_to_element(city_box).click().send_keys(data_generator.city()).perform()
    state_selector = Select(context.browser.find_element(By.ID, 'address-component--state'))
    state_selector.select_by_value(data_generator.state_abbr(False))
    zip_box = context.browser.find_element(By.ID, 'address-component--zip-code')
    ActionChains(context.browser).move_to_element(zip_box).click().send_keys(data_generator.postcode()).perform()
    submit_button = context.browser.find_element(By.ID, 'address-collection--submit-button')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()

@then('the member landing page is loaded')
def step_impl(context):
    welcome_message = context.browser.find_element(By.CLASS_NAME, 'search-panel_welcome-msg')
    assert bool(welcome_message)

@then('they are logged out')
def step_impl(context):
    sign_in = context.browser.find_element(By.ID, 'login--header-text-signin')
    assert bool(sign_in)
  
