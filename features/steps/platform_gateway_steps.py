from behave import given, then, when
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper
from faker import Faker
from uszipcode import SearchEngine
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
    context.wait = WebDriverWait(context.browser, 20)
    context.wait.until(EC.presence_of_element_located((By.ID, 'header-add-review')))

@given('user is on the sign up page')
def step_impl(context):
    context.browser.delete_all_cookies()
    appsuite_env = 'al_member_site'
    signup_url = context.appsuites[appsuite_env]['base_url'] + '/app/signup'
    context.browser.get(signup_url)
    context.wait = WebDriverWait(context.browser, 20)
    context.wait.until(EC.url_to_be(context.appsuites[appsuite_env]['base_url'] + '/app/signup'))

@given('user is on the member login page')
def step_impl(context):
    context.browser.delete_all_cookies()
    appsuite_env = 'al_member_site'
    login_url = context.appsuites[appsuite_env]['base_url'] + '/member/login'
    context.browser.get(login_url)
    context.wait = WebDriverWait(context.browser, 20)
    context.wait.until(EC.url_to_be(context.appsuites[appsuite_env]['base_url'] + '/member/login'))

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
    context.wait.until(EC.presence_of_element_located((By.ID, 'address-collection--first-name')))

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
    random_state = data_generator.state_abbr(False)
    state_selector.select_by_value(random_state)
    geography_search = SearchEngine(simple_zipcode=True)
    random_zip = geography_search.by_state(random_state)
    random_zip_string = random_zip[0].values()[0]
    zip_box = context.browser.find_element(By.ID, 'address-component--zip-code')
    ActionChains(context.browser).move_to_element(zip_box).click().send_keys(random_zip_string).perform()
    submit_button = context.browser.find_element(By.ID, 'address-collection--submit-button')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()
    context.wait.until(EC.presence_of_element_located((By.ID, 'header-add-review')))

@when('the user sends "{message_count:d}" messages')
def step_impl(context, message_count):
    search_hover = context.browser.find_element(By.ID, 'sub-nav-tab-header-house')
    ActionChains(context.browser).move_to_element(search_hover).perform()
    search_plumbing = context.browser.find_element(By.ID, 'header--sub-nav-plumbing')
    ActionChains(context.browser).move_to_element(search_plumbing).click().perform()
    context.wait.until(EC.presence_of_element_located((By.ID, 'searchTerm')))
    search_click_modal = context.browser.find_element(By.ID, 'searchTerm')
    ActionChains(context.browser).move_to_element(search_click_modal).click().perform()
    context.wait.until(EC.presence_of_element_located((By.XPATH, "//ul[@id='spsearch--results-list']//li[1]//a[contains(@id,'spsearch--result-')]")))
    top_result = context.browser.find_element(By.XPATH, "//ul[@id='spsearch--results-list']//li[1]//a[contains(@id,'spsearch--result-')]")
    ActionChains(context.browser).move_to_element(top_result).click().perform()
    context.wait.until(EC.visibility_of_element_located((By.ID, 'message-pro-button')))
    message_pro = context.browser.find_element(By.ID, 'message-pro-button')
    ActionChains(context.browser).move_to_element(message_pro).click().perform()
    context.wait.until(EC.visibility_of_element_located((By.ID, 'send-message-button')))
    textbox = context.browser.find_element(By.ID, 'message')
    ActionChains(context.browser).move_to_element(textbox).click().send_keys('first message').perform()
    send_message = context.browser.find_element(By.ID, 'send-message-button')
    ActionChains(context.browser).move_to_element(send_message).click().perform()

    context.wait.until(EC.invisibility_of_element_located((By.ID, 'send-message-button')))
    view_messages_button = context.browser.find_element(By.ID, 'main-menu--view-messages-icon')
    ActionChains(context.browser).move_to_element(view_messages_button).click().perform()

    context.wait.until(EC.visibility_of_element_located((By.ID, 'interactor-name-link')))
    message_count = int(message_count)
    for counter in range(message_count):
        message_area = context.browser.find_element(By.ID, 'message-compose-field')
        ActionChains(context.browser).move_to_element(message_area).click().send_keys('test message: ' + str(counter)).perform()
        send_button = context.browser.find_element(By.ID, 'send-message-button')
        ActionChains(context.browser).move_to_element(send_button).click().perform()
        time.sleep(1)


@then('the member landing page is loaded')
def step_impl(context):
    context.wait.until(EC.presence_of_element_located((By.CLASS_NAME, 'search-panel_welcome-msg')))
    welcome_message = context.browser.find_element(By.CLASS_NAME, 'search-panel_welcome-msg')
    assert bool(welcome_message)

@then('they are logged out')
def step_impl(context):
    context.wait.until(EC.presence_of_element_located((By.ID, 'login--header-text-signin')))
    sign_in = context.browser.find_element(By.ID, 'login--header-text-signin')
    assert bool(sign_in)
  
