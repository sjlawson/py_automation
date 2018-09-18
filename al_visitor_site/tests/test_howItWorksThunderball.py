from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

class HowItWorksThunderballPageSegmentTestCase(SeleniumTestCase):

    # test segment call on clicking the join link in the header - Thunderball version
    def test_howItWorksTballHeaderJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--join-for-free-button', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Join link in header'),
                ('activityLocation', 'Visitor : How it Works'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # test segment call on clicking the HIW link in the header
    def test_howItWorksTballHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'How It Works link in header'),
                ('activityLocation', 'Visitor : How it Works'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)