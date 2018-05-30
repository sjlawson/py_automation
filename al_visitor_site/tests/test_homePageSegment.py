from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class JoinBtnSegmentTestCase(SeleniumTestCase):

    # test segment call on clicking the join link in home page header
    def test_homePageSegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join link in header'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # basic page call test
    def test_homePageSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/?CacheBuster')

        # describe what you are expecting in the segment call.
        # main field is how Python finds the test data in the page info, should probably be 'name' or 'activityLocation'
        # segment_params is a list of other segment fields to check. Can include main field as well.
        # Take note of formatting...
        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('name', 'Visitor : Home'),
                ('title', 'Angie\'s List | Join for FREE to see 10 Million Verified Reviews'),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v2.1'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # basic page call test
    def test_homePageSegmentHeroJoinCta(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#hero-join-cta-v2-1', 'click')

        # describe what you are expecting in the segment call.
        # main field is how Python finds the test data in the page info, should probably be 'name' or 'activityLocation'
        # segment_params is a list of other segment fields to check. Can include main field as well.
        # Take note of formatting...
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join link in hero image'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
