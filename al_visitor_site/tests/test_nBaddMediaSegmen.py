from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestChooseFile(SeleniumTestCase):


## test segment call on clicking Choose File on VRF

    # test segment call on clicking Choose File field on VRF
    def test_testChooseFile(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--add-media-button', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review Form : Choose File Clicked',
            'segment_params': [
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)