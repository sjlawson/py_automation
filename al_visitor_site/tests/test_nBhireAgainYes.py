from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestItemClickHireAgainYes(SeleniumTestCase):


## test segment call on clicking yes on Would you hire again? on VRF

    # test segment call on clicking the Would you hire again? field on VRF
    def test_testItemClickHireAgainYes(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--willHireAgain-button-yes', 'click', False)

        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Hire Again',
            'segment_params': [
                ('userResponse', 'Yes'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)