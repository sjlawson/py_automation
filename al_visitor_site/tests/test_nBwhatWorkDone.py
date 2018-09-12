from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestItemClickWorkDone(SeleniumTestCase):


## Item Clicked Segment Event - What work did you need done? ##

    # test segment call on clicking the What work did you need done? field on VRF
    def test_testItemClickWorkDone(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#review--description-of-work-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review - What work did you need done?',
            'segment_params': [
                ('description', 'Review - What work did you need done?'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)