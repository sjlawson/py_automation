from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper
from selenium.webdriver.support.ui import WebDriverWait

class NearMeThunderballPageSegmentTestCase(SeleniumTestCase):

    # basic page call test
    def test_nearMeLandscapingTballSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/')

        segcall_info = {
            'main_field': 'path',
            'main_value': '/nearme/landscaping/',
            'segment_params': [
                ('name', 'Visitor : Near Me'),
                ('path', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
                ('title', 'Top 10 Landscapers Near Me | Angie\'s List'),
                ('srCtaDisplayed', 'false'),
                ('referrer',),
                ('search',),
                ('url',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    ### Header Tests ###

    #  AL Header link on NearMe - Tball
    def test_nearMeLandscapingHeaderAlLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--al-logo-link', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Angie’s List logo in header',
            'segment_params': [
                ('description', 'Angie’s List logo in header'),
                # ('activityLocation', 'Visitor : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me join link in the header
    def test_nearMeLandscapingTballHeaderJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--join-for-free-button', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Join link in header',
            'segment_params': [
                ('description', 'Join link in header'),
                # ('activityLocation', 'Visitor : Near Me'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me link in the header
    def test_nearMeLandscapingTballHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--hiw-link', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Near Me Landscaping link in header',
            'segment_params': [
                ('description', 'Near Me Landscaping link in header'),
                # ('activityLocation', 'Visitor : Near Me'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Sign In link in the header
    def test_nearMeLandscapingTballSignInLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--sign-in-link', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Sign In link in header',
            'segment_params': [
                ('description', 'Sign In link in header'),
                # ('activityLocation', 'Visitor : Near Me'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me FAQ link in header Tball
    def test_nearMeLandscapingHeaderFAQLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--faq-link', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'FAQ link in header',
            'segment_params': [
                ('description', 'FAQ link in header'),
                # ('activityLocation', 'Visitor : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me In The Press link in header Tball
    def test_nearMeLandscapingHeaderInThePressLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--in-the-press-link', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'In the Press link in header',
            'segment_params': [
                ('description', 'In the Press link in header'),
                # ('activityLocation', 'Visitor : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Solution Center link in header Tball
    def test_nearMeLandscapingHeaderSolutionCenterLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--articles-link', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Solution Center link in header',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                # ('activityLocation', 'Visitor : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    #  Near Me Business Owners link in header Tball
    def test_nearMeLandscapingHeaderBusinessOwnerLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--business-owners-link', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Business Owners link in header',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                # ('activityLocation', 'Visitor : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    ### Body Tests ###


    # Near Me Enter Your Zip Landscaping Body
    def test_nearMePostalCodeLandscapingTball(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '.postal-code-input.form-control',
                'action_list': [
                    ('click',),
                    ('send_keys','90210'),
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/','#postal-code-empty-state-search', 'click', False, prep_actions)
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Near Me',
            'segment_params': [
                ('activityLocation', 'Visitor : Near Me'),
                ('description', 'IP lookup failed : input zip code'),
                ('pathName', '/nearme/landscaping/'),
                ('postalCode', '90210')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info) 


    #  Near Me Major Markets Albany Tball
    def test_nearMeLandscapingMajorMarketsAlbanyTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Albany', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/albany/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Major Markets Austin Tball
    def test_nearMeLandscapingMajorMarketsAustinTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Austin', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/austin/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Major Markets Charlotte Tball
    def test_nearMeLandscapingMajorMarketsCharlotteTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Charlotte', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/charlotte/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Major Markets Detroit Tball
    def test_nearMeLandscapingMajorMarketsDetroitTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Detroit', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/detroit/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Major Markets Greensboro Tball
    def test_nearMeLandscapingMajorMarketsGreensboroTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Greensboro', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/greensboro/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Major Markets Louisville Tball
    def test_nearMeLandscapingMajorMarketsLouisvilleTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Louisville', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/louisville/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Major Markets Phoenix Tball
    def test_nearMeLandscapingMajorMarketsLPhoenixeTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Phoenix', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/phoenix/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    #  Near Me Major Markets Seattle Tball
    def test_nearMeLandscapingMajorMarketsSeattleTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#major-market-link-Seattle', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Major Market Clicked',
            'segment_params': [
                ('description', 'Major Market Clicked'),
                ('activityLocation', 'Visitor : Near Me'),
                ('cityClicked', 'https://www.angieslist.com/companylist/seattle/'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # Near Me Landscaping Top Cities NYC Tball
    def test_nearMeLandscapingTopCitiesNYCTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor App : Near Me',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Houston Tball
    def test_nearMeLandscapingTopCitiesHoustonTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Chicago Tball
    def test_nearMeLandscapingTopCitiesChicagoTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Indianapolis Tball
    def test_nearMeLandscapingTopCitiesIndianapolisTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Boston Tball
    def test_nearMeLandscapingTopCitiesBostonTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Atlanta Tball
    def test_nearMeLandscapingTopCitiesAtlantaTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor App : Near Me',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Cincinnati Tball
    def test_nearMeLandscapingTopCitiesCincinnatiTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Los Angeles Tball
    def test_nearMeLandscapingTopCitiesLosAngelesTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Dallas Tball
    def test_nearMeLandscapingTopCitiesDallasTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Pittsburgh Tball
    def test_nearMeLandscapingTopCitiesPittsburghTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Minneapolis Tball
    def test_nearMeLandscapingTopCitiesMinneapolisTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Las Vegas Tball
    def test_nearMeLandscapingTopCitiesLasVegasTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities San Antonio Tball
    def test_nearMeLandscapingTopCitiesSanAntonioTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', 'div.top-cities.row > ul.list-inline > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Landscaping Top Cities Tampa Tball
    def test_nearMeLandscapingTopCitiesTampaTball123(self):
        if not self.client:
            return 0

        wait = WebDriverWait(self.client, 20)

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#footer--top-cities-tampa', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor App : Near Me',
            'segment_params': [
              #  ('description', 'Top Cities link in footer'),
               # ('activityLocation', 'Visitor App : Near Me')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


         # 'div.top-cities.row > ul.list-inline > li > a[title="Search Tampa Pros"]'