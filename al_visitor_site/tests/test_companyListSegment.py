from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

# /companylis/ section
class CompanyListTestCase(SeleniumTestCase):

    # test segment call on clicking the join link in home page header
    def test_companyListSegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'jankSwank : Home',
            'segment_params': [
                ('activityLocation', 'jankSwank'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)