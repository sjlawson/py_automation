from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

class HowItWorksThunderballPageSegmentTestCase(SeleniumTestCase):

    # test segment call on clicking the join link in the header - Thunderball version

    #  AL Header link on HIW - Tball
    def test_howItWorksHeaderAlLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--al-logo-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Angie’s List logo in header'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    def test_howItWorksTballHeaderJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--join-for-free-button', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Join link in header'),
                ('activityLocation', 'Visitor : How it Works'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the HIW link in the header
    def test_howItWorksTballHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--hiw-link', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'How It Works link in header'),
                ('activityLocation', 'Visitor : How it Works'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Sign In link in the header
    def test_howItWorksTballSignInLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--sign-in-link', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('activityLocation', 'Visitor : How it Works'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  FAQ link in header Tball
    def test_howItWorksHeaderFAQLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--faq-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  HIW In The Press link in header Tball
    def test_howItWorksHeaderInThePressLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--in-the-press-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  HIW Solution Center link in header Tball
    def test_howItWorksHeaderSolutionCenterLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--articles-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    #  Business Owners link in header Tball
    def test_howItWorksHeaderBusinessOwnerLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#header--business-owners-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # How It Works Top Cities NYC Tball
    def test_howItWorksPageTopCitiesNYCTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search New York Pros"]', 'click') 
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Houston Tball
    def test_howItWorksPageTopCitiesHoustonTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Chicago Tball
    def test_howItWorksPageTopCitiesChicagoTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Indianapolis Tball
    def test_howItWorksPageTopCitiesIndianapolisTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Boston Tball
    def test_howItWorksPageTopCitiesBostonTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Atlanta Tball
    def test_howItWorksPageTopCitiesAtlantaTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Cincinnati Tball
    def test_howItWorksPageTopCitiesCincinnatiTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Los Angeles Tball
    def test_howItWorksPageTopCitiesLosAngelesTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Dallas Tball
    def test_howItWorksPageTopCitiesDallasTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Pittsburgh Tball
    def test_howItWorksPageTopCitiesPittsburghTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Minneapolis Tball
    def test_howItWorksPageTopCitiesMinneapolisTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Las Vegas Tball
    def test_howItWorksPageTopCitiesLasVegasTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities San Antonio Tball
    def test_howItWorksPageTopCitiesSanAntonioTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works Top Cities Tampa Tball
    def test_howItWorksPageTopCitiesTampaTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', 'div.top-cities.row > ul.list-inline > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Join For Free link in footer Tball
    def test_howItWorksFooterJoinForFreeTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--join-for-free-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Join For Free link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Find Local Businesses link in footer Tball
    def test_howItWorksFooterBusinessCenterLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--find-local-business-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Find Local Businesses link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works link in footer Tball
    def test_howItWorksFooterHiwLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--how-it-works-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'How It Works link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # FAQs link in footer Tball
    def test_howItWorksFooterFaqLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--faq-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'FAQs link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Solution Center link in footer Tball 
    def test_howItWorksFooterSolutionCenterLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--solution-center-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Solution Center link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries link in footer Tball
    def howItWorksFooterPhotosLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--photo-galleries-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Photo Galleries link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Videos link in footer Tball
    def howItWorksFooterVideoLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--videos-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Videos link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Answers link in footer Tball
    def howItWorksFooterAnswersLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--answers-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Answers link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # For Business Owners link in footer Tball
    def howItWorksFooterBcOwnersTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--for-business-owners-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'For Business Owners link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Press link in footer Tball
    def howItWorksFooterPressLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--press-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Press link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Investor Relations link in footer Tball
    def howItWorksFooterIRLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--investor-relations-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Investor Relations link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # About Angie’s List link in footer Tball
    def howItWorksFooterAboutUsLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--about-us-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'About Angie’s List link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Careers link in footer Tball
    def howItWorksFooterCareersLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--careers-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Careers link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Contact Us link in footer Tball
    def howItWorksFooterContactUsLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm', '#footer--contact-us-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How it Works',
            'segment_params': [
                ('description', 'Contact Us link in footer'),
                ('activityLocation', 'Visitor : How it Works')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)