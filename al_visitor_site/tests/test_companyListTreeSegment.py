from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper

##### Company List Page #### THIS ENTIRE CLASS HAS BEEN CONVERTED TO GHERKIN - SEE: /feature/al_visitor_site/companylist.feature
class CompanyListTestCase(SeleniumTestCase):

    # Company List Page Load
    def test_companyListSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('name', 'Visitor : Directory'),
                ('atTestOffer',),
                ('cid',),
                ('atTestOffer',),
                ('referrer',),
                ('pageVersion', 'Lullabot Redesign'),
                ('path', '/companylist/'),
                ('search',),
                ('title', 'Search Real Local Reviews, Home Services Guide | Angie\'s List'),
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

## Header Segment Events - Company List ##

    # test segment call on clicking the join link in company list header
    def test_companyListSegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('activityLocation', 'Visitor : Directory'),
                ('description', 'Join link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the HIW link in the header
    def test_companyListHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Sign In link in the header
    def test_companyListHeaderSignInClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '#header-sign-in', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the FAQ link in the header
    def test_companyListHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def test_companyListHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def test_companyListHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def test_companyListHeaderBcClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

## Footer Segment Events - Company List ##

    # test segment call on clicking the Join link in the footer
    def test_companyListFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    def test_companyList_topCities(self):
        if not self.client:
            return 0

        self.companyListTopCitiesLinkNYC()
        self.client.back()
        self.companyListTopCitiesLinkHouston()
        self.client.back()
        self.companyListTopCitiesLinkChicago()
        self.client.back()
        self.companyListTopCitiesLinkIndianapolis()
        self.client.back()
        self.companyListTopCitiesLinkBoston()
        self.client.back()
        self.companyListTopCitiesLinkAtlanta()
        self.client.back()
        self.companyListTopCitiesLinkCincinnati()
        self.client.back()
        self.companyListTopCitiesLinkLosAngeles()
        self.client.back()
        self.companyListTopCitiesLinkDallas()
        self.client.back()
        self.companyListTopCitiesLinkPittsburgh()
        self.client.back()
        self.companyListTopCitiesLinkMinneapolis()
        self.client.back()
        self.companyListTopCitiesLinkLasVegas()
        self.client.back()
        self.companyListTopCitiesLinkSanAntonio()
        self.client.back()
        self.companyListTopCitiesLinkTampa()

    # Company List Top Cities NYC
    def companyListTopCitiesLinkNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Houston
    def companyListTopCitiesLinkHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Chicago
    def companyListTopCitiesLinkChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Indianapolis
    def companyListTopCitiesLinkIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Boston
    def companyListTopCitiesLinkBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Atlanta
    def companyListTopCitiesLinkAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Cincinnati
    def companyListTopCitiesLinkCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Directory',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Los Angeles
    def companyListTopCitiesLinkLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Dallas
    def companyListTopCitiesLinkDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Pittsburgh
    def companyListTopCitiesLinkPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Minneapolis
    def companyListTopCitiesLinkMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Las Vegas
    def companyListTopCitiesLinkLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities San Antonio
    def companyListTopCitiesLinkSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Comapny List Top Cities Tampa
    def companyListTopCitiesLinkTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/?bustA1', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Directory'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





    ###### Company List - catNoGeo ######
class CompanyListCatNoGeoTestCase(SeleniumTestCase):


    # test segment call on clicking the join link in company list header
    def test_companyListCatNoGeoSegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('description', 'Join link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the HIW link in the header
    def test_companyListCatNoGeoHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Sign In link in the header
    def test_companyListCatNoGeoHeaderSignInClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '#header-sign-in', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the FAQ link in the header
    def test_companyListCatNoGeoHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def test_companyListCatNoGeoHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def test_companyListCatNoGeoHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def test_companyListCatNoGeoHeaderBcClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

## Footer Segment Events - CatNoGeo ##

    # test segment call on clicking the Join link in the footer
    def test_companyListCatNoGeoFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    def test_companyListCatNoGeo_topCities(self):
        if not self.client:
            return 0

        self.companyListCatNoGeoTopCitiesNYC()
        self.client.back()
        self.companyListCatNoGeoTopCitiesHouston()
        self.client.back()
        self.companyListCatNoGeoTopCitiesChicago()
        self.client.back()
        self.companyListCatNoGeoTopCitiesIndianapolis()
        self.client.back()
        self.companyListCatNoGeoTopCitiesBoston()
        self.client.back()
        self.companyListCatNoGeoTopCitiesAtlanta()
        self.client.back()
        self.companyListCatNoGeoTopCitiesCincinnati()
        self.client.back()
        self.companyListCatNoGeoTopCitiesLosAngeles()
        self.client.back()
        self.companyListCatNoGeoTopCitiesDallas()
        self.client.back()
        self.companyListCatNoGeoTopCitiesPittsburgh()
        self.client.back()
        self.companyListCatNoGeoTopCitiesMinneapolis()
        self.client.back()
        self.companyListCatNoGeoTopCitiesLasVegas()
        self.client.back()
        self.companyListCatNoGeoTopCitiesSanAntonio()
        self.client.back()
        self.companyListCatNoGeoTopCitiesTampa()


    # CatNoGeo Top Cities NYC
    def companyListCatNoGeoTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search New York Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Houston
    def companyListCatNoGeoTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Houston Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Chicago
    def companyListCatNoGeoTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Chicago Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Indianapolis
    def companyListCatNoGeoTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Boston
    def companyListCatNoGeoTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Boston Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Atlanta
    def companyListCatNoGeoTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Atlanta Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Cincinnati
    def companyListCatNoGeoTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : CatNoGeo',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Los Angeles
    def companyListCatNoGeoTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Dallas
    def companyListCatNoGeoTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Dallas Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Pittsburgh
    def companyListCatNoGeoTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Minneapolis
    def companyListCatNoGeoTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities Las Vegas
    def companyListCatNoGeoTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNoGeo Top Cities San Antonio
    def companyListCatNoGeoTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search San Antonio Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # CatNotGeo Top Cities Tampa
    def companyListCatNoGeoTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/home-inspection.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Tampa Home Inspectors Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : CatNoGeo'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



#### Top City ####
class CompanyListTopCityTestCase(SeleniumTestCase):


    # Company List Top City Page Load
    def test_companyListTopCitySegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('name', 'Visitor : US : City'),
                ('atTestOffer',),
                ('cid',),
                ('pageCity', 'Indianapolis, IN'),
                ('pageVersion', 'Lullabot Redesign'),
                ('referrer',),
                ('path', '/companylist/indianapolis/'),
                ('search',),
                ('title', 'Indianapolis, Indiana Local Home Service Pros | Angie\'s List'),
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

## Header Segment Events - Company List ##

    # test segment call on clicking the join link in the header
    def test_companyListTopCitySegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('activityLocation', 'Visitor : US : City'),
                ('description', 'Join link in header'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the HIW link in the header
    def test_companyListTopCityHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Sign In link in the header
    def test_companyListTopCityHeaderSignInClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '#header-sign-in', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the FAQ link in the header
    def test_companyListTopCityHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def test_companyListTopCityHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def test_companyListTopCityHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def test_companyListTopCityHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

## Footer Segment Events - Company List ##

    # test segment call on clicking the Join link in the footer
    def test_companyListTopCityFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
                ('visitorPageGeo', 'INDIANAPOLIS'),
                ('activityLocation', 'Visitor : US : City'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    def test_companyListTopCity_topCities(self):
        if not self.client:
            return 0

        self.companyListTopCityTopCitiesNYC()
        self.client.back()
        self.companyListTopCityTopCitiesHouston()
        self.client.back()
        self.companyListTopCityTopCitiesChicago()
        self.client.back()
        self.companyListTopCityTopCitiesIndianapolis()
        self.client.back()
        self.companyListTopCityTopCitiesBoston()
        self.client.back()
        self.companyListTopCityTopCitiesAtlanta()
        self.client.back()
        self.companyListTopCityTopCitiesCincinnati()
        self.client.back()
        self.companyListTopCityTopCitiesLosAngeles()
        self.client.back()
        self.companyListTopCityTopCitiesDallas()
        self.client.back()
        self.companyListTopCityTopCitiesPittsburgh()
        self.client.back()
        self.companyListTopCityTopCitiesMinneapolis()
        self.client.back()
        self.companyListTopCityTopCitiesLasVegas()
        self.client.back()
        self.companyListTopCityTopCitiesSanAntonio()
        self.client.back()
        self.companyListTopCityTopCitiesTampa()


    # Company List Top City Top Cities NYC
    def companyListTopCityTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Houston
    def companyListTopCityTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Chicago
    def companyListTopCityTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Indianapolis
    def companyListTopCityTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Boston
    def companyListTopCityTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Atlanta
    def companyListTopCityTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Cincinnati
    def companyListTopCityTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : City',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Los Angeles
    def companyListTopCityTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Dallas
    def companyListTopCityTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Pittsburgh
    def companyListTopCityTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Minneapolis
    def companyListTopCityTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities Las Vegas
    def companyListTopCityTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top City Top Cities San Antonio
    def companyListTopCityTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Tampa
    def companyListTopCityTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/indianapolis/?bustA2', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : City'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)




#### Regular City GeoCat #####

class CompanyListRegularCityTestCase(SeleniumTestCase):


    # Company List Regular City Page Load
    def test_companyListRegCitySegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3')

        segcall_info = {
            'main_field': 'pageVersion',
            'main_value': 'GeoCat Tampa Redesign',
            'segment_params': [
                ('name', 'Visitor : Geocat'),
                ('atTestOffer',),
                ('cid',),
                ('pageVersion', 'GeoCat Tampa Redesign'),
                ('path', '/companylist/us/in/fishers/flooring.htm'),
                ('search',),
                ('title', 'Top 10 Best Fishers IN Flooring Installers | Angie\'s List'),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('categoryId', '63'),
                ('homeAdvisorCategoryId', '12032'),
                ('marketId', '1'),
                ('seoTestName',),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v2'),
                ('visitorPageCategory', 'FLOORING SALES/INSTALLATION/REPAIR'),
                ('visitorPageGeo', 'FISHERS IN'),
                ('visitorPageGeoCategory', 'FISHERS IN - FLOORING SALES/INSTALLATION/REPAIR'),
                ('url',),
                ('visitorPageVerticalId','7051'),
                ('visitorPageVerticalName','Home Improvement'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


## Header Segment Events - Company List ##

    # test segment call on clicking the join link in the header
    def test_companyListRegularCitySegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('activityLocation', 'Visitor : Geocat'),
                ('description', 'Join link in header'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the HIW link in the header
    def test_companyListRegularCityHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Sign In link in the header
    def test_companyListRegularCityHeaderSignInClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '#header-sign-in', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the FAQ link in the header
    def test_companyListRegularCityHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def test_companyListRegularCityHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def test_companyListRegularCityHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def test_companyListRegularCityHeaderBcClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

## Footer Segment Events - Company List ##

    # test segment call on clicking the Join link in the footer
    def test_companyListRegularCityFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
                ('visitorPageGeo', 'FISHERS IN'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    def test_companyListRegularCity_topCities(self):
        if not self.client:
            return 0

        self.companyListRegularCityTopCitiesNYC()
        self.client.back()
        self.companyListRegularCityTopCitiesHouston()
        self.client.back()
        self.companyListRegularCityTopCitiesChicago()
        self.client.back()
        self.companyListRegularCityTopCitiesIndianapolis()
        self.client.back()
        self.companyListRegularCityTopCitiesBoston()
        self.client.back()
        self.companyListRegularCityTopCitiesAtlanta()
        self.client.back()
        self.companyListRegularCityTopCitiesCincinnati()
        self.client.back()
        self.companyListRegularCityTopCitiesLosAngeles()
        self.client.back()
        self.companyListRegularCityTopCitiesDallas()
        self.client.back()
        self.companyListRegularCityTopCitiesPittsburgh()
        self.client.back()
        self.companyListRegularCityTopCitiesMinneapolis()
        self.client.back()
        self.companyListRegularCityTopCitiesLasVegas()
        self.client.back()
        self.companyListRegularCityTopCitiesSanAntonio()
        self.client.back()
        self.companyListRegularCityTopCitiesTampa()



    # Company List Regular City Top Cities NYC
    def companyListRegularCityTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-left > li > a[title="Search New York Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Houston
    def companyListRegularCityTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-left > li > a[title="Search Houston Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Chicago
    def companyListRegularCityTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-left > li > a[title="Search Chicago Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Indianapolis
    def companyListRegularCityTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Boston
    def companyListRegularCityTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-left > li > a[title="Search Boston Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Atlanta
    def companyListRegularCityTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-left > li > a[title="Search Atlanta Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Cincinnati
    def companyListRegularCityTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Geocat',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Los Angeles
    def companyListRegularCityTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Dallas
    def companyListRegularCityTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-right > li > a[title="Search Dallas Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Pittsburgh
    def companyListRegularCityTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Minneapolis
    def companyListRegularCityTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Las Vegas
    def companyListRegularCityTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities San Antonio
    def companyListRegularCityTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-right > li > a[title="Search San Antonio Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Top Cities Tampa
    def companyListRegularCityTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/in/fishers/flooring.htm?bustA3', 'div.footer-region.cities-right > li > a[title="Search Tampa Flooring Installers Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Geocat'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





#### State Page - Company List #####

class CompanyListStatePageTestCase(SeleniumTestCase):


    # Company List Regular City Page Load
    def test_companyListStateSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd')

        segcall_info = {
            'main_field': 'pageVersion',
            'main_value': 'Lullabot Redesign',
            'segment_params': [
                ('name', 'Visitor : US : State'),
                ('atTestOffer',),
                ('cid',),
                ('pageVersion', 'Lullabot Redesign'),
                ('path', '/companylist/us/mi/'),
                ('search',),
                ('title', 'Search Home Services in Michigan | Angie\'s List'),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('pageState', 'MI'),
                ('referrer',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


## Header Segment Events - Company List ##

    # test segment call on clicking the join link in the header
    def test_companyListStateSegmentJoin(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('activityLocation', 'Visitor : US : State'),
                ('description', 'Join link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the HIW link in the header
    def test_companyListStateHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Sign In link in the header
    def test_companyListStateHeaderSignInClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '#header-sign-in', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the FAQ link in the header
    def test_companyListStateHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def test_companyListStateHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def test_companyListStateHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def test_companyListStateHeaderBcClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

## Footer Segment Events - Company List ##

    # test segment call on clicking the Join link in the footer
    def test_companyListStateFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    def test_companyListState_topCities(self):
        if not self.client:
            return 0

        self.companyListStateTopCitiesNYC()
        self.client.back()
        self.companyListStateTopCitiesHouston()
        self.client.back()
        self.companyListStateTopCitiesChicago()
        self.client.back()
        self.companyListStateTopCitiesIndianapolis()
        self.client.back()
        self.companyListStateTopCitiesBoston()
        self.client.back()
        self.companyListStateTopCitiesAtlanta()
        self.client.back()
        self.companyListStateTopCitiesCincinnati()
        self.client.back()
        self.companyListStateTopCitiesLosAngeles()
        self.client.back()
        self.companyListStateTopCitiesDallas()
        self.client.back()
        self.companyListStateTopCitiesPittsburgh()
        self.client.back()
        self.companyListStateTopCitiesMinneapolis()
        self.client.back()
        self.companyListStateTopCitiesLasVegas()
        self.client.back()
        self.companyListStateTopCitiesSanAntonio()
        self.client.back()
        self.companyListStateTopCitiesTampa()


    # Company List Regular City Top Cities NYC
    def companyListStateTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Houston
    def companyListStateTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Chicago
    def companyListStateTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Indianapolis
    def companyListStateTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Boston
    def companyListStateTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Atlanta
    def companyListStateTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Cincinnati
    def companyListStateTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : US : State',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Los Angeles
    def companyListStateTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Dallas
    def companyListStateTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Pittsburgh
    def companyListStateTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Minneapolis
    def companyListStateTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities Las Vegas
    def companyListStateTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Company List Regular City Top Cities San Antonio
    def companyListStateTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Comapny List Top Cities Tampa
    def companyListStateTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/mi/?ASd', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : US : State'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
