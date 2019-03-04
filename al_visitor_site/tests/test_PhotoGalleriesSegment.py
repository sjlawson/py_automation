from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper

# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class PhotoGalleriesSegmentTestCase(SeleniumTestCase):


    # basic Photo Galleries page call test
    def test_photoGalleriesSegmentPagecall(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster')

        segcall_info = {
            'main_field': 'name',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('atTestOffer',), 
                ('cid',),
                ('name', 'CNT : Photo Landing Page'),
                ('path', '/photos/'),
                ('referrer',),
                ('search', '?CacheBuster'),
                ('title', 'Home Inspiration and Design Center | Angie\'s List'),
                ('url',),
                ('userId',),
                ('userType', 'Visitor - New'),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)



##### Header Tests #####


    def test_photosDrupal_Header(self):
        if not self.client:
            return 0

        self.photoGalleriesSegmentHeaderJoin()
        self.client.back()
        self.photoGalleriesHeaderLinkClick()
        self.client.back()
        self.photoGalleriesSignInHeader()
        self.client.back()
        self.photoGalleriesHeaderFAQClick()
        self.client.back()
        self.photoGalleriesHeaderITPClick()
        self.client.back()
        self.photoGalleriesHeaderScClick()
        self.client.back()
        self.photoGalleriesHeaderBusinesscenterClick()


    # Header Join Photo Galleries
    def photoGalleriesSegmentHeaderJoin(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#header-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('description', 'Join link in header'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the HIW link in the header
    def photoGalleriesHeaderLinkClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '.btnHiw', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'How it Works link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Sign In Header Photo Galleries
    def photoGalleriesSignInHeader(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster','#header-sign-in', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('description', 'Sign In link in header'),
                ('userId', ''),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the FAQ link in the header
    def photoGalleriesHeaderFAQClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#faq', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'FAQ link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the Press link in the header
    def photoGalleriesHeaderITPClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#press', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'In the Press link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the SC link in the header
    def photoGalleriesHeaderScClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#articles', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'Solution Center link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # test segment call on clicking the BC link in the header
    def photoGalleriesHeaderBusinesscenterClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#nav_business_owner', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'Business Owners link in header'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

##### Footer Events ##### 



    def test_photosDrupal_Footer(self):
        if not self.client:
            return 0

        self.photoGalleriesFooterJoinClick()
        self.client.back()
        self.photoGalleriesTopCitiesLinkNYC()
        self.client.back()
        self.photoGalleriesTopCitiesHouston()
        self.client.back()
        self.photoGalleriesTopCitiesChicago()
        self.client.back()
        self.photoGalleriesTopCitiesIndianapolis()
        self.client.back()
        self.photoGalleriesTopCitiesBoston()
        self.client.back()
        self.photoGalleriesTopCitiesAtlanta()
        self.client.back()
        self.photoGalleriesTopCitiesCincinnati()
        self.client.back()
        self.photoGalleriesTopCitiesLosAngeles()
        self.client.back()
        self.photoGalleriesTopCitiesDallas()
        self.client.back()
        self.photoGalleriesTopCitiesPittsburgh()
        self.client.back()
        self.photoGalleriesTopCitiesMinneapolis()
        self.client.back()
        self.photoGalleriesTopCitiesLasVegas()
        self.client.back()
        self.photoGalleriesTopCitiesSanAntonio()
        self.client.back()
        self.photoGalleriesTopCitiesTampa()
        self.client.back()
        self.photoGalleriesfooterJoinCTA()




    # test segment call on clicking the Join link in the footer
    def photoGalleriesFooterJoinClick(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#footer-join', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities NYC
    def photoGalleriesTopCitiesLinkNYC(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.top-cities > ul > div.footer-region.cities-left > li > a[title="Search New York Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Houston
    def photoGalleriesTopCitiesHouston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-left > li > a[title="Search Houston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Chicago
    def photoGalleriesTopCitiesChicago(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-left > li > a[title="Search Chicago Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Indianapolis
    def photoGalleriesTopCitiesIndianapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-left > li > a[title="Search Indianapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Boston
    def photoGalleriesTopCitiesBoston(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-left > li > a[title="Search Boston Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Atlanta
    def photoGalleriesTopCitiesAtlanta(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-left > li > a[title="Search Atlanta Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Cincinnati
    def photoGalleriesTopCitiesCincinnati(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Los Angeles
    def photoGalleriesTopCitiesLosAngeles(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Dallas
    def photoGalleriesTopCitiesDallas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-right > li > a[title="Search Dallas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Pittsburgh
    def photoGalleriesTopCitiesPittsburgh(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Minneapolis
    def photoGalleriesTopCitiesMinneapolis(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Las Vegas
    def photoGalleriesTopCitiesLasVegas(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities San Antonio
    def photoGalleriesTopCitiesSanAntonio(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-right > li > a[title="Search San Antonio Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Photo Galleries Top Cities Tampa
    def photoGalleriesTopCitiesTampa(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', 'div.footer-region.cities-right > li > a[title="Search Tampa Pros"]', 'click')
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Top Cities link in footer',
            'segment_params': [
                ('description', 'Top Cities link in footer'),
                ('activityLocation', 'CNT : Photo Landing Page'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    # Footer Join
    def photoGalleriesfooterJoinCTA(self):
        # quit if browser didn't load
        if not self.client:
            return 0

        # req'd params: current test case (self), relative path to triggering page, target element, and the triggering action
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/photos/?CacheBuster', '#footer-join', 'click')

        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'CNT : Photo Landing Page',
            'segment_params': [
                ('description', 'Join button in footer'),
                ('userId',),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)