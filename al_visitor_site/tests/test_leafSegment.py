from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper

# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class LeafPageSegmentTestCase(SeleniumTestCase):

    # basic leaf page call test for Leaf Non-Advertiser HA crossover One-Column
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
                ('atTestOffer',),
                ('categoryId', '107'),
                ('cid',),
                ('homeAdvisorCategoryId', '10216'),
                ('marketId', '11'),
                ('name', 'Visitor : SP Profile'),
                ('pageVersion', 'Lullabot Redesign'),
                ('path', '/companylist/us/ga/atlanta/aaa-plumbing-heating-and-air-conditioning-reviews-101241.htm'),
                ('referrer',),
                ('search', '?CacheBuster'),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v2'),
                ('title', 'AAA Plumbing Heating & Air Conditioning Reviews - Atlanta, GA | Angie\'s List'),
                ('url',),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('visitorPageCategory', 'PLUMBING'),
                ('visitorPageGeo', 'ATLANTA'),
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
                ('atTestOffer',),
                ('categoryId', '78'),
                ('cid',),
                ('homeAdvisorCategoryId', '10211'),
                ('marketId',),
                ('name', 'Visitor : SP Profile'),
                ('pageVersion', 'Lullabot Redesign'),
                ('path', '/companylist/us/xx/memphis/all-about-u-heating-and-air-reviews-8499678.htm'),
                ('referrer',),
                ('search', '?CacheBuster'),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v2'),
                ('title', 'All about u heating & air Reviews - Memphis, | Angie\'s List'),
                ('url',),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('visitorPageCategory', 'HEATING & A/C'),
                ('visitorPageGeo', 'MEMPHIS'),
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
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/ky/louisville/lock-doctor-llc-reviews-6314008.htm?CacheBuster')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('atTestOffer',),
                ('categoryId', '377'),
                ('cid',),
                ('homeAdvisorCategoryId', '12024'),
                ('marketId', '41'),
                ('name', 'Visitor : SP Profile'),
                ('pageVersion', 'Lullabot Redesign'),
                ('path', '/companylist/us/ky/louisville/lock-doctor-llc-reviews-6314008.htm'),
                ('referrer',),
                ('search', '?CacheBuster'),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v2'),
                ('title', 'Lock Doctor LLC Reviews - Louisville, KY | Angie\'s List'),
                ('url',),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('visitorPageCategory', 'DOORS'),
                ('visitorPageGeo', 'LOUISVILLE'),
                ('visitorPageGeoCategory', 'LOUISVILLE - DOORS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


                ###### Header Test Starts Here ######


    def test_leafSegment_Header(self):
        if not self.client:
            return 0

        self.SignInHeaderLeafAdvertiser()
        self.client.back()
        self.SignInHeaderLeafnewAdvertiser()
        self.client.back()
        self.SignInHeaderLeafnonAdvertiser()
        self.client.back()
        self.headerJoinCTAAdvertiser()
        self.client.back()
        self.headerJoinCTAnewAdvertiser()
        self.client.back()
        self.headerJoinCTAnonAdvertiser()

    # Sign In Header Leaf Page Advertiser
    def SignInHeaderLeafAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/nv/las-vegas/brick-art-masonry-reviews-6291023.htm','#header-sign-in', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Sign In link in header'),
                ('marketId', '35'),
                ('userId',),
                ('visitorPageCategory', 'Concrete - Pouring & Repair'),
                ('visitorPageGeo', 'LAS VEGAS'),
                ('visitorPageGeoCategory', 'LAS VEGAS - CONCRETE - POURING & REPAIR'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Header Sign In  Leaf Page New Advertiser
    def SignInHeaderLeafnewAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/fl/miami/advanced-turf-property-maintenance-reviews-5966518.htm','#header-sign-in', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Sign In link in header'),
                ('marketId', '31'),
                ('userId', ''),
                ('visitorPageCategory', 'Landscaping'),
                ('visitorPageGeo', 'MIAMI/FT. LAUDERDALE'),
                ('visitorPageGeoCategory', 'MIAMI/FT. LAUDERDALE - LANDSCAPING'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Header Sign In Leaf Page NON Advertiser
    def SignInHeaderLeafnonAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/wi/milwaukee/andrea-haas-reviews-420334.htm','#header-sign-in', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Sign In link in header'),
                ('marketId', '3'),
                ('userId', ''),
                ('visitorPageCategory', 'Real Estate Agents'),
                ('visitorPageGeo', 'MILWAUKEE'),
                ('visitorPageGeoCategory', 'MILWAUKEE - REAL ESTATE AGENTS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Header Join Leaf page Advertiser
    def headerJoinCTAAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/tn/nashville/a1-remodeling%2Ca1-kitchen-and-bath-reviews-2284753.htm', '#header-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Join link in header'),
                ('marketId', '34'),
                ('userId', ''),
                ('visitorPageCategory', 'Plumbing'),
                ('visitorPageGeo', 'NASHVILLE'),
                ('visitorPageGeoCategory', 'NASHVILLE - PLUMBING'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Header Join Leaf page New Advertiser
    def headerJoinCTAnewAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/ny/albany/ims-moving-and-property-preservation-reviews-8191745.htm', '#header-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Join link in header'),
                ('marketId', '52'),
                ('userId', ''),
                ('visitorPageCategory', 'Handymen'),
                ('visitorPageGeo', 'ALBANY'),
                ('visitorPageGeoCategory', 'ALBANY - HANDYMEN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Header Join Leaf page NON Advertiser
    def headerJoinCTAnonAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/ky/louisville/a-cheaper-locksmith-reviews-6238590.htm', '#header-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Join link in header'),
                ('marketId', '41'),
                ('userId', ''),
                ('visitorPageCategory', 'Auto Service'),
                ('visitorPageGeo', 'LOUISVILLE'),
                ('visitorPageGeoCategory', 'LOUISVILLE - AUTO SERVICE'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



                ###### Body of the page begins here ######




    def test_leafSegment_Body(self):
        if not self.client:
            return 0

        self.leafPageSegmentCTAwithoutZIP()
        self.client.back()
        self.leafPageSegmentCTAwithoutZIPAdvertiser()
        self.client.back()
        self.leafPageSegmentCTAwithZIPAdvertiser()
        self.client.back()
        self.leafPageSegmentCTAwithZIPNewAdvertiser()


    # Body - SR ha-lead-submit-v2 w/o postal code Leaf Page Advertiser
    def leafPageSegmentCTAwithoutZIP(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/tx/houston/2-brothers-home-remodeling-reviews-8990024.htm','#ha-lead-submit', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('categoryId', '112'),
                ('description', 'Service Request Flow entry button'),
                ('homeAdvisorCategoryId','12061'),
                ('marketId', '15'),
                ('userId',),
                ('userSelectedZipCode',),
                ('visitorPageCategory', 'Roofing'),
                ('visitorPageGeo', 'HOUSTON'),
                ('visitorPageGeoCategory', 'HOUSTON - ROOFING'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Body - SR ha-lead-submit-v2 w/o postal code Leaf Page New Advertiser
    def leafPageSegmentCTAwithoutZIPAdvertiser(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mn/minneapolis/a-fine-line-painting-company-reviews-3397176.htm','#ha-lead-submit', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('categoryId', '294'),
                ('description', 'Service Request Flow entry button'),
                ('homeAdvisorCategoryId','10381'),
                ('marketId', '8'),
                ('userId',),
                ('userSelectedZipCode',),
                ('visitorPageCategory', 'Painting - Interior'),
                ('visitorPageGeo', 'TWIN CITIES'),
                ('visitorPageGeoCategory', 'TWIN CITIES - PAINTING - INTERIOR'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Body - SR ha-lead-submit-v2 with postal code Leaf Page Advertiser
    def leafPageSegmentCTAwithZIPAdvertiser(self):
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
                ('activityLocation', 'Visitor : SP Profile'),
                ('categoryId', '112'),
                ('description', 'Service Request Flow entry button'),
                ('marketId', '40'),
                ('userId',),
                ('userSelectedZipCode','27610'),
                ('visitorPageCategory', 'Roofing'),
                ('visitorPageGeo', 'RALEIGH/DURHAM'),
                ('visitorPageGeoCategory', 'RALEIGH/DURHAM - ROOFING'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Body - SR ha-lead-submit-v2 with postal code Leaf Page New Advertiser
    def leafPageSegmentCTAwithZIPNewAdvertiser(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '#ha-lead-zip',
                'action_list': [
                    ('click',),
                    ('send_keys','80123'),
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/co/denver/all-city-movers-reviews-4173765.htm','#ha-lead-submit', 'click', True, prep_actions)

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                # ('activityLocation', 'Visitor : SP Profile'),
                # ('categoryId', '98'),
                # ('description', 'Service Request Flow entry button'),
                # ('homeAdvisorCategoryId', '12050'),
                # ('marketId', '27'),
                # ('userId',),
                # ('userSelectedZipCode','80123'),
                # ('visitorPageCategory', 'Moving'),
                # ('visitorPageGeo', 'DENVER'),
                # ('visitorPageGeoCategory', 'DENVER - MOVING'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



                ###### Footer Tests Start Here ######


    def test_leafSegment_Footer(self):
        if not self.client:
            return 0

        self.footerJoinCTAAdvertiser()
        self.client.back()
        self.footerJoinCTANewAdvertiser()
        self.client.back()
        self.leafPageSegmentFooterJoinClick()
        self.client.back()
        self.leafPageSegmentTopCitiesLinkNYC()
        self.client.back()
        self.leafPageSegmentTopCitiesHouston()
        self.client.back()
        self.leafPageSegmentTopCitiesChicago()
        self.client.back()
        self.leafPageSegmentTopCitiesIndianapolis()
        self.client.back()
        self.leafPageSegmentTopCitiesBoston()
        self.client.back()
        self.leafPageSegmentTopCitiesAtlanta()
        self.client.back()
        self.leafPageSegmentTopCitiesCincinnati()
        self.client.back()
        self.leafPageSegmentTopCitiesLosAngeles()
        self.client.back()
        self.leafPageSegmentTopCitiesDallas()
        self.client.back()
        self.leafPageSegmentTopCitiesPittsburgh()
        self.client.back()
        self.leafPageSegmentTopCitiesMinneapolis()
        self.client.back()
        self.leafPageSegmentTopCitiesLasVegas()
        self.client.back()
        self.leafPageSegmentTopCitiesSanAntonio()
        self.client.back()
        self.leafPageSegmentTopCitiesTampa()
        self.client.back()
        self.footerJoinCTAnonAdvertiser()

    # Footer Join Leaf Page Advertiser
    def footerJoinCTAAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/nc/charlotte/all-phaze-electric-llc-reviews-8841148.htm', '#footer-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Join button in footer'),
                ('marketId', '10'),
                ('userId', ''),
                ('visitorPageCategory', 'Electrical'),
                ('visitorPageGeo', 'CHARLOTTE'),
                ('visitorPageGeoCategory', 'CHARLOTTE - ELECTRICAL'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Footer Join Leaf Page New Advertiser
    def footerJoinCTANewAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/az/phoenix/altaquip-llc-reviews-3708698.htm', '#footer-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('marketId', '20'),
                ('userId', ''),
                ('visitorPageCategory', 'Appliance Repair - Large'),
                ('visitorPageGeo', 'PHOENIX'),
                ('visitorPageGeoCategory', 'PHOENIX - APPLIANCE REPAIR - LARGE'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Join link in the footer
    def leafPageSegmentFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities NYC
    def leafPageSegmentTopCitiesLinkNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search New York Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Houston
    def leafPageSegmentTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Houston Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Chicago
    def leafPageSegmentTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Chicago Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Indianapolis
    def leafPageSegmentTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Indianapolis Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Boston
    def leafPageSegmentTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Boston Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Atlanta
    def leafPageSegmentTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Atlanta Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Cincinnati
    def leafPageSegmentTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Los Angeles
    def leafPageSegmentTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Dallas
    def leafPageSegmentTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Dallas Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Pittsburgh
    def leafPageSegmentTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Pittsburgh Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Minneapolis
    def leafPageSegmentTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Minneapolis Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Las Vegas
    def leafPageSegmentTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Las Vegas Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities San Antonio
    def leafPageSegmentTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search San Antonio Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Leaf Page - Footer - Top Cities Tampa
    def leafPageSegmentTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Tampa Plumbers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : SP Profile'),
                ('userId',),

            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Footer Join Leaf Page NON Advertiser
    def footerJoinCTAnonAdvertiser(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/oh/cleves/asap-critter-people-reviews-259270.htm', '#footer-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ('activityLocation', 'Visitor : SP Profile'),
                ('description', 'Join button in footer'),
                ('marketId', '6'),
                ('userId', ''),
                ('visitorPageCategory', 'Heating & A/C'),
                ('visitorPageGeo', 'CINCINNATI'),
                ('visitorPageGeoCategory', 'CINCINNATI - HEATING & A/C'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)