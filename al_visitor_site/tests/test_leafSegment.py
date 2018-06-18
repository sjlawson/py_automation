from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class LeafPageSegmentTestCase(SeleniumTestCase):

    # basic leaf page call test for advertisers
    def test_leafPageSegmentPagecallAdvertisers(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/ga/atlanta/aaa-plumbing-heating-and-air-conditioning-reviews-101241.htm?CacheBuster')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('name', 'Visitor : SP Profile'),
                ('title', 'AAA Plumbing Heating & Air Conditioning Reviews - Atlanta, GA | Angie\'s List'),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v1'),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('visitorPageCategory', 'Plumbing'),
                ('visitorPageGeo', 'Atlanta'),
                ('visitorPageGeoCategory', 'ATLANTA - PLUMBING'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # basic leaf page call test for new advertisers
    def test_leafPageSegmentPagecallNewAdvertisers(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/xx/memphis/all-about-u-heating-and-air-reviews-8499678.htm?CacheBuster')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('name', 'Visitor : SP Profile'),
                ('title', 'All about u heating & air Reviews - Memphis, | Angie\'s List'),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v1'),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('visitorPageCategory', 'HEATING & A/C'),
                ('visitorPageGeo', 'Memphis'),
                ('visitorPageGeoCategory', 'MEMPHIS - HEATING & A/C'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # basic leaf page call test for non-advertisers
    def test_leafPageSegmentPagecallNonAdvertisers(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/247-lock-change-service-reviews-8498073.htm?CacheBuster')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('name', 'Visitor : SP Profile'),
                ('title', '24/7 Lock Change Service Reviews - Indianapolis, IN | Angie\'s List'),
                ('srCtaDisplayed', False),
                ('srCtaVersion',),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('visitorPageCategory', 'AUTO SERVICE'),
                ('visitorPageGeo', 'INDIANAPOLIS'),
                ('visitorPageGeoCategory', 'INDIANAPOLIS - AUTO SERVICE'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR ha-lead-submit-v2 w/o postal code
    def test_leafPageSegmentCTAwithoutZIP(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/nc/raleigh/alpha-omega-construction-group-inc-reviews-8807061.htm','#ha-lead-submit', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ("description","Service Request Flow entry button"),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # SR ha-lead-submit-v2 with postal code
    def test_leafPageSegmentCTAwithZIP(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '#ha-lead-zip',
                'action_list': [
                    ('click',),
                    ('send_keys','27610'),
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/nc/raleigh/alpha-omega-construction-group-inc-reviews-8807061.htm','#ha-lead-submit', 'click', True, prep_actions)
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ("description","Service Request Flow entry button"),
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
            'main_value': 'Visitor : SP Profile',
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
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('description', 'Join link in header'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)