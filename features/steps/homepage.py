from behave import *
from xmlrunner import xmlrunner
import os, unittest

# Steps for a basic homepage test POC
# @given('user is on the homepage')
# def step_impl(context):
#     context.url = context.suiteconf['base_url']
#     context.browser.get(context.url)

# @when('the page loads')
# def step_impl(context):
#     assert "Angie" in context.browser.title

# @then('the logo element is on the page')
# def step_impl(context):
#     elem = context.browser.find_element_by_id("al_logo")
#     assert "404 Page Not Found" not in context.browser.page_source


@then('passthru for unittest step3')
def step_impl(context):
    tests = unittest.TestLoader().loadTestsFromName(context.suiteconf + '.tests.test_companyListTreeSegment.CompanyListTestCase.test_companyListSegmentPagecall')
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)
