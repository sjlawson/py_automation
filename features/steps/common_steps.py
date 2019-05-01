from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
from selenium.webdriver.common.keys import Keys
import time

@then('press the "{keycode}" key while "{element}" is in focus')
def step_impl(context, keycode, element):
    element = SegmentTestHelper.get_webdriver_element(context.browser, element, 0)
    element.send_keys(getattr(Keys, keycode))
