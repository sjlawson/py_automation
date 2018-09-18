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
