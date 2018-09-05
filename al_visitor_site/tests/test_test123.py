from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


##### Company List Page ####
class TestCompanyListTestCase(SeleniumTestCase):


## Header Segment Events - Company List ##

    # test segment call on clicking the join link in company list header
    def test_testCompanyListSegmentJoin(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', 'div.form-group > div.btn-group > #reviews--workComplete-button-yes]', 'click')

        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Work Done',
            'segment_params': [
                ('reviewSection', 'Work Done'),
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)












