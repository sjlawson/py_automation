from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

class visitorReviewWorkCompleted(SeleniumTestCase):

    # basic leaf page call test for advertisers
    def test_vrfWorkCompletedYes(self):
        # quit if browser didn't load
        if not self.client:
            return 0


    collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews—workComplete-button-yes', 'click')
        

    segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Work Done',
            'segment_params': [
                ('reviewSection', 'Work Done'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)