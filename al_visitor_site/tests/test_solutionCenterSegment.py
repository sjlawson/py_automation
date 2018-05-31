from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class JoinBtnSegmentTestCase(SeleniumTestCase):


    # basic page call test
    def test_solutionCenterPageLoadSegment(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?CacheBuster')

        # describe what you are expecting in the segment call.
        # main field is how Python finds the test data in the page info, should probably be 'name' or 'activityLocation'
        # segment_params is a list of other segment fields to check. Can include main field as well.
        # Take note of formatting...
        segcall_info = {
            'main_field': 'name',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                #('atTestOffer'), #example of what we want to do when only checking for property name
                ('cid', ''),
                ('path', '/articles/'),
                ('title', 'Solution Center - Tips, Advice, and Ideas | Angie\'s List'),
                ('userId', ''),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

