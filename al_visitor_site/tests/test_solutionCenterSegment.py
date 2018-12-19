from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class SolutionCenterSegmentTestCase(SeleniumTestCase):


    # Page Call - Landing Page
    def test_solutionCenterLandingPage_PageCall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('name', 'CNT : Article Landing Page'),
                ('path', '/articles/'),
                ('title', 'Solution Center - Tips, Advice, and Ideas | Angie\'s List'),
                ('atTestOffer',),
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Page Call - Classic with multiple cats - Article
    def test_solutionCenterArticle_PageCall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/lead-paint-still-threat-it-shouldn%E2%80%99t-be.htm')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'CNT : Article',
            'segment_params': [
                ('name', 'CNT : Article'),
                ('path', '/articles/lead-paint-still-threat-it-shouldn%E2%80%99t-be.htm'),
                ('title', 'Lead Paint Is Still a Threat, But It Shouldn’t Be | Angie\'s List'),
                ('visitorPageCategory', 'INTERIOR PAINTERS'),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('contentNodeId', '112756')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Page Call - Structured with SINGLE Cat - Article
    def test_solutionCenterStructuredArticle_PageCall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/interior-design-ideas-add-dimension.htm')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'CNT : Structured Content',
            'segment_params': [
                ('name', 'CNT : Structured Content'),
                ('path', '/articles/interior-design-ideas-add-dimension.htm'),
                ('title', 'Interior Design Ideas Add Dimension | Angie\'s List'),
                ('visitorPageCategory', 'PAINTING - INTERIOR'),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('contentNodeId', '145946')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Page Call - Structured with multiple cats - Article
    def test_solutionCenterStructuredMultiCatArticle_PageCall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/pros-and-cons-frameless-shower-doors.htm')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'CNT : Structured Content',
            'segment_params': [
                ('name', 'CNT : Structured Content'),
                ('path', '/articles/pros-and-cons-frameless-shower-doors.htm'),
                ('title', 'Pros and Cons of Frameless Shower Doors | Angie\'s List'),
                ('visitorPageCategory', 'REMODELING - KITCHEN & BATHROOM'),
                ('userId',),
                ('userType', 'Visitor - New'),
                ('contentNodeId', '152101'),
                ('authorName', 'Kaley Belakovich'),
                ('srCtaDisplayed', True),
                ('srCtaVersion', 'v2')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


                ##### Header Tests #####

    def test_solutionCenterLandingPage_Header(self):
        if not self.client:
            return 0

        self.articlesHeaderJoinClick()
        self.client.back()
        self.articlesHIWHeaderLinkClick()
        self.client.back()
        self.articlesHeaderSignInClick()
        self.client.back()
        self.articlesHeaderFAQClick()
        self.client.back()
        self.articlesHeaderITPClick()
        self.client.back()
        self.articlesHeaderScClick()
        self.client.back()
        self.articlesHeaderBcClick()
        self.client.back()


    # test segment call on clicking the join link in the header
    def articlesHeaderJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'Join link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the HIW link in the header
    def articlesHIWHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Sign In link in the header
    def articlesHeaderSignInClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#header-sign-in', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the FAQ link in the header
    def articlesHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def articlesHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def articlesHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def articlesHeaderBcClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


                ##### Footer Tests #####

    def test_solutionCenterLandingPage_Footer(self):
        if not self.client:
            return 0
        self.articlesFooterJoinClick()
        self.client.back()
        self.solutionCenterTopCitiesNYC()
        self.client.back()
        self.solutionCenterTopCitiesHouston()
        self.client.back()
        self.solutionCenterTopCitiesChicago()
        self.client.back()
        self.solutionCenterTopCitiesIndianapolis()
        self.client.back()
        self.solutionCenterTopCitiesBoston()
        self.client.back()
        self.solutionCenterTopCitiesAtlanta()
        self.client.back()
        self.solutionCenterTopCitiesCincinnati()
        self.client.back()
        self.solutionCenterTopCitiesLosAngeles()
        self.client.back()
        self.solutionCenterTopCitiesDallas()
        self.client.back()
        self.solutionCenterTopCitiesPittsburgh()
        self.client.back()
        self.solutionCenterTopCitiesMinneapolis()
        self.client.back()
        self.solutionCenterTopCitiesLasVegas()
        self.client.back()
        self.solutionCenterTopCitiesSanAntonio()
        self.client.back()
        self.solutionCenterTopCitiesTampa()

    # test segment call on clicking the Join link in the footer
    def articlesFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities NYC
    def solutionCenterTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Houston
    def solutionCenterTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Chicago
    def solutionCenterTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Indianapolis
    def solutionCenterTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Boston
    def solutionCenterTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Atlanta
    def solutionCenterTopCitiesAtlanta(self):
        if not self.client:
            return 0
                                                                                                            
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Cincinnati
    def solutionCenterTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Article Landing Page',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Los Angeles
    def solutionCenterTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Dallas
    def solutionCenterTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Pittsburgh
    def solutionCenterTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Minneapolis
    def solutionCenterTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Las Vegas
    def solutionCenterTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities San Antonio
    def solutionCenterTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Tampa
    def solutionCenterTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Article Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
