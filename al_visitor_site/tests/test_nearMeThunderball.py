from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper

class NearMeThunderballPageSegmentTestCase(SeleniumTestCase):

    # basic page call test
    def test_nearMeLandscapingThunderballSegmentPagecall(self):
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
            'main_value': 'How It Works link in header',
            'segment_params': [
                ('description', 'How It Works link in header'),
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



    #  Near Me Read More Review Card Tball
    def test_nearMeLandscapingReadMoreLinkTball(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#review-card-review-expand-1', 'click')

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review Expanded',
            'segment_params': [
                ('description', 'Review Expanded'),
                ('activityLocation', 'Visitor : Near Me'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
                ('rankId', '0'),
                ('reviewId', '1')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # Near Me Read More Review Card Tball Place #1
    def test_nearMeLandscapingReadMoreLinkV1Tball(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '#review-card-review-expand-1',
                'action_list': [
                    ('click',)
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/','#review-card-review-collapse-1', 'click', False, prep_actions)
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review Collapsed',
            'segment_params': [
                ('activityLocation', 'Visitor : Near Me'),
                ('description', 'Review Collapsed'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
                ('rankId', '0'),
                ('reviewId', '1')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Near Me Read More Review Card Tball Place #2
    def test_nearMeLandscapingReadMoreLinkV2Tball(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '#review-card-review-expand-2',
                'action_list': [
                    ('click',)
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/','#review-card-review-collapse-2', 'click', False, prep_actions)
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review Collapsed',
            'segment_params': [
                ('activityLocation', 'Visitor : Near Me'),
                ('description', 'Review Collapsed'),
                ('keywordSearched', '/nearme/landscaping/'),
                ('pathName', '/nearme/landscaping/'),
                ('rankId', '1'),
                ('reviewId', '2')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



        ### Footer Tests ###

        