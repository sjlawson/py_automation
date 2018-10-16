from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper

class HomepageTballSegmentTestCase(SeleniumTestCase):

    def test_homePageTBall_Header(self):
        if not self.client:
            return 0

        self.headerFaqLinkTball()
        self.client.back()
        self.headerInThePressLinkTball()
        self.client.back()
        self.headerSCLinkTball()
        self.client.back()
        self.headerBOLinkTball()
        self.client.back()
        self.headerAlLinkTball()
        self.client.back()
        self.headerHiwLinkTball()

    #  FAQ link in header Tball
    def headerFaqLinkTball(self):
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
    def headerInThePressLinkTball(self):
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
    def headerSCLinkTball(self):
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
    def headerBOLinkTball(self):
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
    def headerAlLinkTball(self):
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
    def headerHiwLinkTball(self):
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



                    ###### FOOTER #######


    def test_homePageTBall_TopCity(self):
        if not self.client:
            return 0

        self.HomePageTopCitiesNYCTball()
        self.client.back()
        self.homePageTopCitiesHoustonTball()
        self.client.back()
        self.homePageTopCitiesChicagoTball()
        self.client.back()
        self.homePageTopCitiesIndianapolisTball()
        self.client.back()
        self.homePageTopCitiesBostonTball()
        self.client.back()
        self.homePageTopCitiesAtlantaTball()
        self.client.back()
        self.homePageTopCitiesCincinnatiTball()
        self.client.back()
        self.homePageTopCitiesLosAngelesTball()
        self.client.back()
        self.homePageTopCitiesDallasTball()
        self.client.back()
        self.homePageTopCitiesPittsburghTball()
        self.client.back()
        self.homePageTopCitiesMinneapolisTball()
        self.client.back()
        self.homePageTopCitiesLasVegasTball()
        self.client.back()
        self.homePageTopCitiesSanAntonioTball()
        self.client.back()
        self.homePageTopCitiesTampaTball()


    # Homepage Top Cities NYC Tball
    def HomePageTopCitiesNYCTball(self):
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
    def homePageTopCitiesHoustonTball(self):
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
    def homePageTopCitiesChicagoTball(self):
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
    def homePageTopCitiesIndianapolisTball(self):
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
    def homePageTopCitiesBostonTball(self):
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
    def homePageTopCitiesAtlantaTball(self):
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
    def homePageTopCitiesCincinnatiTball(self):
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
    def homePageTopCitiesLosAngelesTball(self):
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
    def homePageTopCitiesDallasTball(self):
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
    def homePageTopCitiesPittsburghTball(self):
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
    def homePageTopCitiesMinneapolisTball(self):
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
    def homePageTopCitiesLasVegasTball(self):
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
    def homePageTopCitiesSanAntonioTball(self):
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
    def homePageTopCitiesTampaTball(self):
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



    def test_homePageTBall_TopCity(self):
        if not self.client:
            return 0

        self.footerJoinCTAHomepageTball()
        self.client.back()
        self.footerJoinForFreeTball()
        self.client.back()
        self.footerBcLinkTball()
        self.client.back()
        self.footerHiwLinkTball()
        self.client.back()
        self.footerSolutionCenterLinkTball()
        self.client.back()
        self.footerPhotosLinkTball()
        self.client.back()
        self.footerVideoLinkTball()
        self.client.back()
        self.footerAnswersLinkTball()
        self.client.back()
        self.footerBcOwnersTball()
        self.client.back()
        self.footerPressLinkTball()
        self.client.back()
        self.footerFaqLinkTball()
        self.client.back()
        self.footerIRLinkTball()
        self.client.back()
        self.footerAboutUsLinkTball()
        self.client.back()
        self.footerCareersLinkTball()
        self.footerContactUsLinkTball()



    # Join button in footer Tball
    def footerJoinCTAHomepageTball(self):
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
    def footerJoinForFreeTball(self):
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
    def footerBcLinkTball(self):
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
    def footerHiwLinkTball(self):
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
    def footerFaqLinkTball(self):
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
    def footerSolutionCenterLinkTball(self):
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
    def footerPhotosLinkTball(self):
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
    def footerVideoLinkTball(self):
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
    def footerAnswersLinkTball(self):
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
    def footerBcOwnersTball(self):
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
    def footerPressLinkTball(self):
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
    def footerIRLinkTball(self):
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
    def footerAboutUsLinkTball(self):
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
    def footerCareersLinkTball(self):
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
    def footerContactUsLinkTball(self):
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