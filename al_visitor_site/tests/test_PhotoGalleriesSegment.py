from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class PhotoGalleriesSegmentTestCase(SeleniumTestCase):


    # basic photo galleries page call test
    def test_PhotoGalleriesSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('atTestOffer',), 
                ('cid',),
                ('name', 'CNT : Photo Landing Page'),
                ('path', '/photos/'),
                ('referrer',),
                ('search', '?CacheBuster'),
                ('title', 'Home Inspiration and Design Center | Angie\'s List'),
                ('url',),
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)