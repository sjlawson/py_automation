from behave import *
# from xmlrunner import xmlrunner
from common.SegmentTestHelper import SegmentTestHelper
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
    time.sleep(4) # if a page takes longer than 4 seconds, it's bad
    seg_calls = SegmentTestHelper.collect_segment_requests_on_page(context)
    expected_prop_name = context.table[0]['unique_field']
    expected_prop_value = context.table[0]['unique_value']
    prop_exists = False
    for seg_props in seg_calls:
        if expected_prop_name in seg_props:
            if seg_props[expected_prop_name] == expected_prop_value:
                print("%s == %s" % (seg_props[expected_prop_name], expected_prop_value))
                prop_exists = True

    try:
        assert prop_exists == True
    except:
        # caught to avoid false is not true response
        raise AssertionError("%s not in segment properties" % expected_prop_name)


@then('the segment call contains parameters')
def step_impl(context):
    pass
