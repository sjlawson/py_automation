from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper

class HomepageSegmentTestCase(SeleniumTestCase):

    # basic page call test
    def test_homePageSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/?CacheBuster')

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



    def test_homePageDrupal_Header(self):
        if not self.client:
            return 0

        self.homePageSegmentJoin()
        self.client.back()
        self.homePageSegmentHeroJoinCta()
        self.client.back()
        self.homePagefindProsCTA()
        self.client.back()
        self.headerJoinCTA()


    # test segment call on clicking the join link in home page header
    def homePageSegmentJoin(self):
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


    # SR Hero Join CTA
    def homePageSegmentHeroJoinCta(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR ha-lead-submit-v2
    def homePagefindProsCTA(self):
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
                ('categoryId',),
                ('categorySelected',),
                ('homeAdvisorCategoryId',),
                ('manualTextInput',),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Header Join
    def headerJoinCTA(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



 
    #### Body ####


    def test_homePageDrupal_Body(self):
        if not self.client:
            return 0

        self.plumbingPopularServiceQuickLinkHomePage()
        self.client.back()
        self.plumbingPopularServiceQuickLinkV2Homepage()
        self.client.back()
        self.roofingPopularServiceQuickLink()
        self.client.back()
        self.roofingPopularServiceQuickLinkV2Homepage()
        self.client.back()
        self.heatACPopularServiceQuickLink()
        self.client.back()
        self.hvacPopularServiceQuickLinkV2()
        self.client.back()
        self.electricalPopularServiceQuickLink()
        self.client.back()
        self.electricalPopularServiceQuickLinkV2()
        self.client.back()
        self.landscapingPopularServiceQuickLink()
        self.client.back()
        self.landscapingPopularServiceQuickLinkV2()
        self.client.back()
        self.housecleaningPopularServiceQuickLink()
        self.client.back()
        self.housecleaningPopularServiceQuickLinkV2()
        self.client.back()
        self.housecleaningPopularServiceQuickLink()
        self.client.back()
        self.remodelingPopularServiceQuickLinkV2()
        self.client.back()
        self.paintingPopularServiceQuickLink()
        self.client.back()
        self.paintingPopularServiceQuickLinkV2()
        self.client.back()
        self.homePageSegmentSRCTAwithTacos()
        self.client.back()
        self.homePageSegmentSrCtaWithCat()



    # SR Plumbing Popular Service Quick Links Text
    def plumbingPopularServiceQuickLinkHomePage(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Plumbing Popular Service Quick Links Image
    def plumbingPopularServiceQuickLinkV2Homepage(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Roofing Popular Service Quick Links Text
    def roofingPopularServiceQuickLink(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Roofing Popular Service Quick Links Image
    def roofingPopularServiceQuickLinkV2Homepage(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR HVAC Popular Service Quick Links Text
    def heatACPopularServiceQuickLink(self):
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
                ('homeAdvisorCategoryId', 10211),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR HVAC Popular Service Quick Links Image
    def hvacPopularServiceQuickLinkV2(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Electrical Popular Service Quick Links Text
    def electricalPopularServiceQuickLink(self):
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
                ('homeAdvisorCategoryId', 12026),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Electrical Popular Service Quick Links Image
    def electricalPopularServiceQuickLinkV2(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Landscaping Popular Service Quick Links Text
    def landscapingPopularServiceQuickLink(self):
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
                ('homeAdvisorCategoryId', 12046),
                ('userId',),
          ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Landscaping Popular Service Quick Links Image
    def landscapingPopularServiceQuickLinkV2(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Housecleaning Popular Service Quick Links Text
    def housecleaningPopularServiceQuickLink(self):
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
                ('homeAdvisorCategoryId', 12014),
                ('userId',),
           ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Housecleaning Popular Service Quick Links Image
    def housecleaningPopularServiceQuickLinkV2(self):
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
                ('userId',),

            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # SR Remodeling Popular Service Quick Links Text
    def housecleaningPopularServiceQuickLink(self):
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
                ('homeAdvisorCategoryId', 12001),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Remodeling Popular Service Quick Links Image
    def remodelingPopularServiceQuickLinkV2(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Painting Popular Service Quick Links Text
    def paintingPopularServiceQuickLink(self):
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
                ('homeAdvisorCategoryId', 10381),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # SR Painting Popular Service Quick Links Image
    def paintingPopularServiceQuickLinkV2(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage SR Flow Negative Testing Scenerio
    def homePageSegmentSRCTAwithTacos(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '#edit-category-2',
                'action_list': [
                    ('click',),
                    ('send_keys','Tacos'),
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-submit-v2', 'click', True, prep_actions)
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Find Pros button in hero image - to SR path'),
                ('manualTextInput', 'Tacos'),
                ('userId',),
                ('homeAdvisorCategoryId',),
                ('categoryId',),
                ('categorySelected',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage SR Flow - Plumbing
    def homePageSegmentSrCtaWithCat(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '#edit-category-2',
                'action_list': [
                    ('click',),
                    ('send_keys','Plumbing'),
                ]

            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#ha-lead-submit-v2', 'click', True, prep_actions)
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Find Pros button in hero image - to SR path'),
                ('userId',),
                ('homeAdvisorCategoryId',),
                ('categoryId', '107'),
                ('categorySelected', 'Plumbing'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    def test_homePage_Footer(self):
        if not self.client:
            return 0
        self.homePagefooterJoinCTA()
        self.client.back()
        self.homePageTopCitiesNYC()
        self.client.back()
        self.homePageTopCitiesHouston()
        self.client.back()
        self.homePageTopCitiesChicago()
        self.client.back()
        self.homePageTopCitiesIndianapolis()
        self.client.back()
        self.homePageTopCitiesBoston()
        self.client.back()
        self.homePageTopCitiesAtlanta()
        self.client.back()
        self.homePageTopCitiesCincinnati()
        self.client.back()
        self.homePageTopCitiesLosAngeles()
        self.client.back()
        self.homePageTopCitiesDallas()
        self.client.back()
        self.homePageTopCitiesPittsburgh()
        self.client.back()
        self.homePageTopCitiesMinneapolis()
        self.client.back()
        self.homePageTopCitiesLasVegas()
        self.client.back()
        self.homePageTopCitiesSanAntonio()
        self.client.back()
        self.homePageTopCitiesTampa()




    #### Footer Tests ####

    def homePagefooterJoinCTA(self):
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
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # Homepage Top Cities NYC
    def homePageTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Houston
    def homePageTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Chicago
    def homePageTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Indianapolis
    def homePageTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Boston
    def homePageTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Atlanta
    def homePageTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Cincinnati
    def homePageTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Los Angeles
    def homePageTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Dallas
    def homePageTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Pittsburgh
    def homePageTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Minneapolis
    def homePageTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Las Vegas
    def homePageTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities San Antonio
    def homePageTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Homepage Top Cities Tampa
    def homePageTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'Visitor : Home'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
