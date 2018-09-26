from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper

class NearMeThunderballPageSegmentTestCase(SeleniumTestCase):

    # basic page call test
    def test_nearMePlumbingThunderballSegmentPagecall(self):
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
    def test_nearMePlumbingHeaderAlLinkTball(self):
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
    def test_nearMePlumbingTballHeaderJoinClick(self):
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
    def test_nearMePlumbingTballHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/', '#header--Near Me-link', 'click')
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
    def test_nearMePlumbingTballSignInLinkClick(self):
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
    def test_nearMePlumbingHeaderFAQLinkTball(self):
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
    def test_nearMePlumbingHeaderInThePressLinkTball(self):
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
    def test_nearMePlumbingHeaderSolutionCenterLinkTball(self):
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
    def test_nearMePlumbingHeaderBusinessOwnerLinkTball(self):
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

    # Near Me Plumbing Body
    ''' def test_nearMePostalCodePlumbing(self):
        if not self.client:
            return 0
        prep_actions = [
            {
                'action_element': '.postal-code-input.form-control',
                'action_list': [
                    ('click',),
                    ('send_keys','90210'),
                ]
            },
            {
                'action_element': '#postal-code-empty-state-search',
                'action_list': [
                    ('click',)
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/nearme/landscaping/','#postal-code-empty-state-search', 'click', True, prep_actions)
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Near Me',
            'segment_params': [
               # ('activityLocation', 'Visitor : Near Me'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info) '''


        ### Footer Tests ###

        