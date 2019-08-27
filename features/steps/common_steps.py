from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
from common.BehaveStepHelper import BehaveStepHelper
from selenium.webdriver.common.keys import Keys
import os, time
from uszipcode import SearchEngine
from faker import Faker



@then('press the "{keycode}" key while "{element}" is in focus')
def step_impl(context, keycode, element):
    """ Key codes are listed at:
    https://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.keys"""
    element = SegmentTestHelper.get_webdriver_element(context.browser, element, 0)
    element.send_keys(getattr(Keys, keycode))


@when('the user clears text field with selector "{element}"')
def step_impl(context, element):
    element = SegmentTestHelper.get_webdriver_element(context.browser, element, 0)
    element.clear()


@when('the page has finished loading')
def step_impl(context):
    BehaveStepHelper.page_loaded(context)


@when('the visitor creates a new account')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    username_box = context.browser.find_element(*MemberSignUpPageLocators.SIGNUP_EMAIL)
    ActionChains(context.browser).move_to_element(username_box).click().send_keys(data_generator.email()).perform()
    password_box = context.browser.find_element(*MemberSignUpPageLocators.SIGNUP_PASSWORD)
    ActionChains(context.browser).move_to_element(password_box).click().send_keys('testtest1234').perform()
    membership_checkbox = context.browser.find_element(*MemberSignUpPageLocators.SIGNUP_AGREEMENT)
    ActionChains(context.browser).move_to_element(membership_checkbox).click().perform()
    submit_button = context.browser.find_element(*MemberSignUpPageLocators.SIGNUP_CONTINUE)
    ActionChains(context.browser).move_to_element(submit_button).click().perform()

    agreement_present = context.browser.find_elements(*MemberSignUpPageLocators.AGREEMENT_ACCEPT)
    if len(agreement_present) > 0:
        agree_button = context.browser.find_element(*MemberSignUpPageLocators.AGREEMENT_ACCEPT)
        ActionChains(context.browser).move_to_element(agree_button).click().perform()
        context.wait.until(EC.presence_of_element_located(MemberSignUpAddressLocators.ADDRESS_FIRST_NAME))
    else:
        context.wait.until(EC.presence_of_element_located(MemberSignUpAddressLocators.ADDRESS_FIRST_NAME))


@step('the page shows the user is authenticated')
def step_impl(context):
    cookie = context.browser.get_cookie('authToken')
    assert cookie is not None
    time.sleep(1)

@then('the page should meet "{acc_standard}" accessibility guidelines')
def step_impl(context, acc_standard):
    BehaveStepHelper.accessibility(context, acc_standard)


@given('a list of absolute URLs and Accessibility standard')
def step_impl(context):
    context.accessibility_urls = os.environ['ACPATHLIST'].split(',')
    context.acc_standard = os.environ['ACSTANDARD']


@then('each page at the given URL should meet given accessibility standard')
def step_impl(context):
    message = ""
    for url in context.accessibility_urls:
        BehaveStepHelper.token_auth(context, url)
        context.browser.get(url)
        time.sleep(3)
        try:
            BehaveStepHelper.accessibility(context, context.acc_standard)
            message += "\nPage at URL %s PASSED accessibility standard %s\n" % (context.browser.current_url, context.acc_standard)
        except AssertionError as ae:
            message += str(ae)

    if context.test_case.test_result == 'fail':
        raise AssertionError(message)
