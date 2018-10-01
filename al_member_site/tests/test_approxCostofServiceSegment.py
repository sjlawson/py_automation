from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestItemClickApproxCostOfService(SeleniumTestCase):


## Item Clicked Segment Event - Approximate Cost of Service ##

    # test segment call on clicking the Approximate Cost of Service field on VRF
    def test_testItemAppoxCostOfService(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#review--cost-of-service-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review - Approximate cost of service',
            'segment_params': [
                ('description', 'Review - Approximate cost of service'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)