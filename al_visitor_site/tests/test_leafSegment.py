from tests.SeleniumTestCase import SeleniumTestCase
from SegmentTestHelper import SegmentTestHelper
from selenium.webdriver.common.by import By


# NOTE: Must select Chrome for this test.
# TODO: adapt for other webdrivers
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class LeafPageSegmentTestCase(SeleniumTestCase):

    def test_leafPageSegmentCTAwithoutZIP(self):
        if not self.client:
            return 0

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/nc/raleigh/alpha-omega-construction-group-inc-reviews-8807061.htm', '#leaf-cta', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ("description","Service Request Flow entry button"),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

    def test_leafPageSegmentCTAwithZIP(self):
        if not self.client:
            return 0
        self.client.find_element(By.CSS_SELECTOR("#leaf-cta")).click()
        self.client.find_element(By.CSS_SELECTOR("#leaf-cta")).sendKeys("27610")
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/companylist/us/nc/raleigh/alpha-omega-construction-group-inc-reviews-8807061.htm', '#leaf-cta', 'click')
        segcall_info = {
            'main_field': 'activityLocation',
            'main_value': 'Visitor : SP Profile',
            'segment_params': [
                ("description","Service Request Flow entry button"),
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)