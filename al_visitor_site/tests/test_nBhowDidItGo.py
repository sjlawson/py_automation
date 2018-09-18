from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestItemClickHowDidItGo(SeleniumTestCase):


## Item Clicked Segment Event - How Did It Go? ##

    # test segment call on clicking the How Did It Go? field on VRF
    def test_testItemClickWorkDone(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#review--how-did-it-go-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review - How did it go?',
            'segment_params': [
                ('description', 'Review - How did it go?'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)