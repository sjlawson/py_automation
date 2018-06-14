import sys
from tests.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

##
# Leaf Page
##
class HomeTestCase(SeleniumTestCase):

    def test_homepage(self):
        if self.client:
            test_urls = ["/",
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



                leaf = self.client.find_elements_by_css_selector('div.footer-region.cities-left > li > a[title="Search New York Pros"]')
                self.assertTrue(len(leaf))