from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestWorkCompleteSegmentYes(SeleniumTestCase):


## Work Performed Yes Segment Event ##

    # test segment call on clicking Yes Was money paid or were services performed? on VRF
    def test_testWorkCompleteSegmentYes(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--workComplete-button-yes', 'click', False)
        
        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Work Done',
            'segment_params': [
                ('reviewSection', 'Work Done'),
                ('userType', 'Not Authenticated'),
                ('userResponse', 'Yes'),
                
            ]
        }

       

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)












