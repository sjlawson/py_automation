from behave import then
from xmlrunner import xmlrunner
import unittest


@then('run member site unittests')
def step_impl(context):
    """This will take a VERY long time unless you comment out some lines in the list of enabled_tests below """
    appsuite_env = 'al_member_site'
    test_names = [appsuite_env + '.tests.' + test for test in get_member_site_tests()]
    tests = unittest.TestLoader().loadTestsFromNames(test_names)
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

def get_member_site_tests():
    tests = unittest.TestLoader().discover('al_member_site/tests')
    test_list = []
    test_skiplist = get_member_skiplist()
    for group in tests:
        for suite in group:
            for test in suite:
                test_row = str(test)
                canonical = test_row[test_row.find("(")+1:test_row.find(")")] + '.' + test_row[:test_row.find("(")].strip()
                if not canonical in test_skiplist:
                    test_list.append(canonical)

    return test_list

def get_member_skiplist():
    """
    Returns list of tests to be SKIPPED, in most cases, probably most of them
    When `behave --tags=@memberLegacy -k` is run, any test that IS commented out or missing below will be run in succession
    """
    tests = [
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testChooseFile',
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testGradeSelected',
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testHowDidItgo',
        # 'test_VrfSegmentEvents.VrfSegmentEvents.test_testItemAppoxCostOfService',
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testItemClickHireAgainNo',
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testItemClickHireAgainYes',
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testItemClickWorkDone',
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testWorkCompleteSegmentNo',
        'test_VrfSegmentEvents.VrfSegmentEvents.test_testWorkCompleteSegmentYes',
    ]

    return tests
