from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class testWorkCompleteSegmentYes(SeleniumTestCase):


## Work Performed Yes Segment Event ##

    # test segment call on clicking Yes Was money paid or were services performed? on VRF
    def test_testWorkCompleteSegmentYes(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--workComplete-button-yes', 'click')

        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Work Done',
            'segment_params': [
                ('reviewSection', 'Work Done'),
                
            ]
        }

       

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)












