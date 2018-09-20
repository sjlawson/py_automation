from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

class NearMeThunderballPageSegmentTestCase(SeleniumTestCase):

    # basic page call test
    def test_nearMeThunderballSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/plumbing/')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : Near Me',
            'segment_params': [
                ('name', 'Visitor : Near Me'),
                ('path', '/nearme/plumbing/'),
                ('pathName', '/nearme/plumbing/'),
                ('title', 'Near Me | Angie\'s List'),
                ('srCtaDisplayed', 'false'),
                ('referrer',),
                ('search',),
                ('url',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)