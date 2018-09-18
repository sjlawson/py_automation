from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

class HomepageTballSegmentTestCase(SeleniumTestCase):

    # Join button in footer Tball
    def test_footerJoinCTAHomepageTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--join-button', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Join For Free link in footer Tball
    def test_footerJoinForFreeTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--join-for-free-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join For Free link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Find Local Businesses link in footer Tball
    def test_footerBcLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--find-local-business-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Find Local Businesses link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # How It Works link in footer Tball
    def test_footerHiwLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--how-it-works-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'How It Works link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # FAQs link in footer Tball
    def test_footerFaqLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--faq-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'FAQs link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Solution Center link in footer Tball
    def test_footerSolutionCenterLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--solution-center-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Solution Center link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries link in footer Tball
    def test_footerPhotosLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--photo-galleries-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Photo Galleries link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Videos link in footer Tball
    def test_footerVideoLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--videos-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Videos link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Answers link in footer Tball
    def test_footerAnswersLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--answers-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Answers link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # For Business Owners link in footer Tball
    def test_footerBcOwnersTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--for-business-owners-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'For Business Owners link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Press link in footer Tball
    def test_footerPressLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--press-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Press link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Investor Relations link in footer Tball
    def test_footerIRLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--investor-relations-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Investor Relations link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # About Angie’s List link in footer Tball
    def test_footerAboutUsLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--about-us-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'About Angie’s List link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Careers link in footer Tball
    def test_footerCareersLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--careers-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Careers link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Contact Us link in footer Tball
    def test_footerContactUsLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#footer--contact-us-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Contact Us link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    #  FAQ link in header Tball
    def test_headerFaqLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header--faq-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  In The Press link in header Tball
    def test_headerInThePressLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header--in-the-press-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    #  Solution Center link in header Tball
    def test_headerSCLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header--articles-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    #  Business Owners link in header Tball
    def test_headerBOLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header--business-owners-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    #  AL Header link in header Tball
    def test_headerAlLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header--al-logo-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Angie’s List logo in header'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    #  How It Works link in header Tball
    def test_headerHiwLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header--hiw-link', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'How It Works link in header'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Homepage Top Cities NYC Tball
    def test_HomePageTopCitiesNYCTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search New York Pros"]', 'click') 
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Houston Tball
    def test_homePageTopCitiesHoustonTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Chicago Tball
    def test_homePageTopCitiesChicagoTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Indianapolis Tball
    def test_homePageTopCitiesIndianapolisTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Boston Tball
    def test_homePageTopCitiesBostonTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Atlanta Tball
    def test_homePageTopCitiesAtlantaTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Cincinnati Tball
    def test_homePageTopCitiesCincinnatiTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Los Angeles Tball
    def test_homePageTopCitiesLosAngelesTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Dallas Tball
    def test_homePageTopCitiesDallasTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Pittsburgh Tball
    def test_homePageTopCitiesPittsburghTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Minneapolis Tball
    def test_homePageTopCitiesMinneapolisTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Las Vegas Tball
    def test_homePageTopCitiesLasVegasTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities San Antonio Tball
    def test_homePageTopCitiesSanAntonioTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Tampa Tball
    def test_homePageTopCitiesTampaTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)