from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class ccccHomepageSegmentTestCase(SeleniumTestCase):

    # test segment call on clicking the join link in home page header
    def test_ccccchomePageSegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join link in header'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)