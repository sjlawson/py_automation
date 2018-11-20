from behave import *
# from xmlrunner import xmlrunner
from common.SegmentTestHelper import SegmentTestHelper
# from SegmentTestHelper import collect_segment_requests_on_page, assert_segment_call_exists, assert_segment_call_props
import unittest, time


# @then('passthru for unittest step3')
# def step_impl(context):
    #     tests = unittest.TestLoader().loadTestsFromName(context.suiteconf + \
    # '.tests.test_companyListTreeSegment.CompanyListTestCase.test_companyListSegmentPagecall')
    #     xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

@given('user is on the companylist page')
def step_impl(context):
    context.url = context.baseurl + context.text
    context.browser.get(context.url)

@when('a segment page call is sent for a unique field value pair')
def step_impl(context):
    SegmentTestHelper.assert_segment_call_exists(context)

@then('the segment call contains parameters')
def step_impl(context):
    SegmentTestHelper.assert_segment_call_props(context)
