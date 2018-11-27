from behave import *
from xmlrunner import xmlrunner
# from common.SegmentTestHelper import SegmentTestHelper
import unittest


@then('passthru for unittest step3')
def step_impl(context):
        tests = unittest.TestLoader().loadTestsFromName(context.suiteconf + \
            '.tests.test_companyListTreeSegment.CompanyListTestCase.test_companyListSegmentPagecall')
        xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)
