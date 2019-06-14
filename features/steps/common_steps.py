from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
from common.BehaveStepHelper import BehaveStepHelper
from selenium.webdriver.common.keys import Keys
import os, time


@then('press the "{keycode}" key while "{element}" is in focus')
def step_impl(context, keycode, element):
    """ Key codes are listed at:
    https://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.keys"""
    element = SegmentTestHelper.get_webdriver_element(context.browser, element, 0)
    element.send_keys(getattr(Keys, keycode))


@when('the page has finished loading')
def step_impl(context):
    BehaveStepHelper.page_loaded(context)


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
        context.browser.get(url)
        time.sleep(3)
        try:
            BehaveStepHelper.accessibility(context, context.acc_standard)
        except AssertionError as ae:
            message += str(ae)
    if context.test_case.test_result == 'fail':
        raise AssertionError(message)
