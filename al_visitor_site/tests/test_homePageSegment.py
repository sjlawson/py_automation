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


    # SR Plumbing Popular Service Quick Links Text
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



    # SR Plumbing Popular Service Quick Links Image
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



    # SR Roofing Popular Service Quick Links Text
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



    # SR Roofing Popular Service Quick Links Image
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


    # SR HVAC Popular Service Quick Links Text
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



    # SR HVAC Popular Service Quick Links Image
    def test_hvacPopularServiceQuickLinkV2(self):
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


    # SR Electrical Popular Service Quick Links Text
    def test_electricalPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-electrical', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 54),
                ('categorySelected', 'Electrical'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12026),            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Electrical Popular Service Quick Links Image
    def test_electricalPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-electrical.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 54),
                ('categorySelected', 'Electrical'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12026),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Landscaping Popular Service Quick Links Text
    def test_landscapingPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-landscaping', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 85),
                ('categorySelected', 'Landscaping'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12046),            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Landscaping Popular Service Quick Links Image
    def test_landscapingPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-landscaping.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 85),
                ('categorySelected', 'Landscaping'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12046),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Housecleaning Popular Service Quick Links Text
    def test_housecleaningPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-housecleaning', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 80),
                ('categorySelected', 'Housecleaning'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12014),            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Housecleaning Popular Service Quick Links Image
    def test_housecleaningPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-housecleaning.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 80),
                ('categorySelected', 'Housecleaning'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12014),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Remodeling Popular Service Quick Links Text
    def test_housecleaningPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-remodeling', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 111),
                ('categorySelected', 'Remodeling'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12001),            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Remodeling Popular Service Quick Links Image
    def test_housecleaningPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-remodeling.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 111),
                ('categorySelected', 'Remodeling'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 12001),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Painting Popular Service Quick Links Text
    def test_paintingPopularServiceQuickLink(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-ps-painting', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 294),
                ('categorySelected', 'Painting'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10381),            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Painting Popular Service Quick Links Image
    def test_paintingPopularServiceQuickLinkV2(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '.bg-painting.no-border.img', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Popular Services icon',
            'segment_params': [
                ('categoryId', 294),
                ('categorySelected', 'Painting'),
                ('description', 'Popular Services icon'),
                ('homeAdvisorCategoryId', 10381),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
