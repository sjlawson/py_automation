from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper

class HowItWorksPageSegmentTestCase(SeleniumTestCase):


    # basic page call test
    def test_howItWorksSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('name', 'Visitor : How It Works'),
                ('path', '/how-it-works.htm'),
                ('title', 'How Does Angie\'s List Work | Angie\'s List'),
                ('atTestOffer',),
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the join link in the header
    def test_howItWorksHeaderJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '#header-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('description', 'Join link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # test segment call on clicking the HIW link in the header
    def test_howItWorksHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)




    # test segment call on clicking the Sign In link in the header
    def test_howItWorksHeaderSignInClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '#header-sign-in', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('description', 'Sign In link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the FAQ link in the header
    def test_howItWorksHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the Press link in the header
    def test_howItWorksHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the SC link in the header
    def test_howItWorksHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the BC link in the header
    def test_howItWorksHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : How It Works',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


    # test segment call on clicking the Join link in the footer
    def test_howItWorksFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'H: How it Works',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



    # How It Works Top Cities NYC
    def test_howItWorksTopCitiesNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Houston
    def test_solutionCenterTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Chicago
    def test_solutionCenterTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Indianapolis
    def test_solutionCenterTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Boston
    def test_solutionCenterTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Atlanta
    def test_solutionCenterTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Cincinnati
    def test_solutionCenterTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Articles List',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Los Angeles
    def test_solutionCenterTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Dallas
    def test_solutionCenterTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Pittsburgh
    def test_solutionCenterTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Minneapolis
    def test_solutionCenterTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Las Vegas
    def test_solutionCenterTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities San Antonio
    def test_solutionCenterTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Solution Center Top Cities Tampa
    def test_solutionCenterTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/how-it-works.htm?bustARhyme', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'H: How it Works'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)