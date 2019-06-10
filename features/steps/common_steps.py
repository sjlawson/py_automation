from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
from common.BehaveStepHelper import BehaveStepHelper
from selenium.webdriver.common.keys import Keys
import time

@then('press the "{keycode}" key while "{element}" is in focus')
def step_impl(context, keycode, element):
    """ Key codes are listed at: https://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.keys"""
    element = SegmentTestHelper.get_webdriver_element(context.browser, element, 0)
    element.send_keys(getattr(Keys, keycode))

@when('the page has finished loading')
def step_impl(context):
    time.sleep(3)

@then('the page should meet "{acc_standard}" accessibility guidelines')
def step_impl(context, acc_standard):
    BehaveStepHelper.accessibility(context, acc_standard)
