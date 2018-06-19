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



    # Solution Center Top Cities NYC
    def test_solutionCenterTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Houston
    def test_solutionCenterTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Chicago
    def test_solutionCenterTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Indianapolis
    def test_solutionCenterTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Boston
    def test_solutionCenterTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Atlanta
    def test_solutionCenterTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Cincinnati
    def test_solutionCenterTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Articles List',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Los Angeles
    def test_solutionCenterTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Dallas
    def test_solutionCenterTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Pittsburgh
    def test_solutionCenterTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Minneapolis
    def test_solutionCenterTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Las Vegas
    def test_solutionCenterTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities San Antonio
    def test_solutionCenterTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Tampa
    def test_solutionCenterTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/articles/?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Articles List'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)