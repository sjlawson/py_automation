from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestItemClickApproxDateOfService(SeleniumTestCase):


## Item Clicked Segment Event - Approximate Date of Service ##

    # test segment call on clicking the Approximate Date of Service field on VRF
    def test_testItemClickWorkDone(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#calendar-input-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Approximate date of service (or last contact)',
            'segment_params': [
                ('description', 'Approximate date of service (or last contact)'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)