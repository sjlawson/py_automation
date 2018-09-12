from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class testWorkCompleteSegmentNo(SeleniumTestCase):


## Work Performed Yes Segment Event ##

    # test segment call on clicking No Was money paid or were services performed? on VRF
    def test_testWorkCompleteSegmentNo(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--workComplete-button-no', 'click', False)
        
        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Work Done',
            'segment_params': [
                ('reviewSection', 'Work Done'),
                ('userType', 'Not Authenticated'),
                ('userResponse', 'No'),
                
            ]
        }

       

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)