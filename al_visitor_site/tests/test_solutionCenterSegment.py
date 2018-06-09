from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper


# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class SolutionCenterSegmentTestCase(SeleniumTestCase):


    # basic page call test
    def test_articlesSegmentPagecall(self):
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



    # test segment call on clicking the join link in the header
    def test_articlesHeaderJoinClick(self):
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
    def test_articlesHIWHeaderLinkClick(self):
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
    def test_articlesHeaderSignInClick(self):
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
    def test_articlesHeaderFAQClick(self):
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
    def test_articlesHeaderITPClick(self):
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
    def test_articlesHeaderScClick(self):
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
    def test_articlesHeaderScClick(self):
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


    # test segment call on clicking the Join link in the footer
    def test_articlesFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Articles List',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)