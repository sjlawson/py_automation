from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
from axe_selenium_python import Axe
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

@then('the page is tested for accessibility')
def step_impl(context):
    axe = Axe(context.browser)
    axe.inject()
    results = axe.run(options={'runOnly': { 'type': 'tag', 'values': ['wcag2a']}})
    current_url = context.browser.current_url
    try:
        assert len(results["violations"]) == 0
        context.test_case.test_result = 'pass'
    except AssertionError as ae:
        context.test_case.test_result = 'fail'
        violations = str(axe.report(results["violations"]))
        with open('./reports/ADA_violations.txt', 'w') as report:
            report.write(violations)
        raise AssertionError('Page at url: %s failed accesibility with: %s ' % (current_url, violations))
