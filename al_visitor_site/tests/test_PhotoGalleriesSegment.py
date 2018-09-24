from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class PhotoGalleriesSegmentTestCase(SeleniumTestCase):


    # basic Photo Galleries page call test
    def test_photoGalleriesSegmentPagecall(self):
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

    # Header Join Photo Galleries
    def test_photoGalleriesSegmentHeaderJoin(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#header-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('description', 'Join link in header'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the HIW link in the header
    def test_photoGalleriesHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Sign In Header Photo Galleries
    def test_photoGalleriesSignInHeader(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster','#header-sign-in', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('description', 'Sign In link in header'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the FAQ link in the header
    def test_photoGalleriesHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def test_photoGalleriesHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def test_photoGalleriesHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def test_photoGalleriesHeaderBusinesscenterClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
