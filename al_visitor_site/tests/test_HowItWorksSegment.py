from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

class HIWPageSegmentTestCase(SeleniumTestCase):


    # basic page call test
    def test_hIWSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/basic/how-it-works.htm?bustARhyme')

        # describe what you are expecting in the segment call.
        # main field is how Python finds the test data in the page info, should probably be 'name' or 'activityLocation'
        # segment_params is a list of other segment fields to check. Can include main field as well.
        # Take note of formatting...
        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('name', 'Visitor : How It Works'),
                ('path', '/basic/how-it-works.htm'),
                ('title', 'How Does Angie\'s List Work | Angie\'s List'),
                ('atTestOffer',),
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
