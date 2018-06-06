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
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Hero Join CTA
    def test_homePageSegmentHeroJoinCta(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#hero-join-cta-v2-1', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join link in hero image'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR ha-lead-submit-v2
    def test_findProsCTA(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-submit-v2', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Find Pros button in hero image - to SR path'),
                ('categoryId', ''),
                ('categorySelected', ''),
                ('homeAdvisorCategoryId', ''),
                ('manualTextInput', ''),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Footer Join
    def test_footerJoinCTA(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Header Join
    def test_headerJoinCTA(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join link in header'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Plumbing Popular Service Quick Links
    def test_plumbingPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-plumbing', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 107),
                ('categorySelected', 'Plumbing'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10216),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Plumbing Popular Service Quick Links v2
    def test_plumbingPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-plumbing.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 107),
                ('categorySelected', 'Plumbing'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10216),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Roofing Popular Service Quick Links
    def test_roofingPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-roofing', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 112),
                ('categorySelected', 'Roofing'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10217),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Roofing Popular Service Quick Links v2
    def test_roofingPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-roofing.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 112),
                ('categorySelected', 'Roofing'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10217),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Heating & A/C Popular Service Quick Links
    def test_heatacPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-heating', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 78),
                ('categorySelected', 'Heating & A/C'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10211),            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Heating & A/C Popular Service Quick Links v2
    def test_heatacPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-heating_ac.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 78),
                ('categorySelected', 'Heating & A/C'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10211),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
