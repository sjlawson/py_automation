from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestItemClickHireAgainNo(SeleniumTestCase):


## test segment call on clicking no on Would you hire again? on VRF

    # test segment call on clicking the Would you hire again? field on VRF
    def test_testItemClickHireAgainNo(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--willHireAgain-button-no', 'click', False)

        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Hire Again',
            'segment_params': [
                ('userResponse', 'No'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)