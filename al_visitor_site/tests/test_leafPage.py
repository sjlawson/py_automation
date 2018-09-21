import sys
from common.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

##
# Leaf Page
##
class LeafTestCase(SeleniumTestCase):

    def test_leaf(self):
        if self.client:
            test_urls = ["/companylist/us/in/greenwood/a-new-horizon-renovations-llp-reviews-6422533.htm",
                         "/companylist/us/ga/winder/1-a-team-home-repair-and-waterproofing-reviews-7804577.htm",
                         "/companylist/us/in/indianapolis/service-plus-heating-cooling-plumbing-reviews-140447.htm",
            ]

            # start_time = "START TIME: " + str(datetime.datetime.now())
            error_count = 0
            errors = ""
            success_count = 0
            wait = WebDriverWait(self.client, 2)
            varnish_buster = "?bustARhyme"
            for test_url in test_urls:
                self.client.get(self.visitor_site_url + test_url + varnish_buster)
                wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'div')))



                leaf = self.client.find_elements_by_css_selector('img[src="/sites/all/themes/altheme/images/banners/3-children.jpg"]')
                self.assertTrue(len(leaf))
