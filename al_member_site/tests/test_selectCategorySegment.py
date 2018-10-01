from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestSelectCategory(SeleniumTestCase):


## Review From : Category Change Segment Event ##

    # test segment call on adding a cateogry association (not working)
    def test_testSelectCategory(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#categroy-of-service-deselected.btn.btn-sm.btn-default', 'click', False)

        segcall_info = {
            'main_field': 'changeType',
            'main_value': 'Add',
            'segment_params': [
                ('changeType', 'Add'),
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)