import sys
from tests.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By


class CheckingSourceTestCase(SeleniumTestCase):

    def test_pageSource(self):
        if self.client:
            test_urls = [ "/",
                          "/articles/",
                          "/home-improvement/",
                          "/auto/",
                          "/videos/",
                          "/how-it-works.htm",
                          "/hvac/",
                          "/faq/",
                          "/photos/",
                          "/videos/",
                          "/in-the-press.htm",
                          "/author/angie-hicks.htm",
                          "/companylist/",
                          "/companylist/us/in/",
                          "/companylist/us/in/greenwood/a-new-horizon-renovations-llp-reviews-6422533.htm",
            ]
            
            # start_time = "START TIME: " + str(datetime.datetime.now())
            error_count = 0
            errors = ""
            success_count = 0
            wait = WebDriverWait(self.client, 2)
            varnish_buster = "?asdf7654"
            for test_url in test_urls:
                self.client.get(self.visitor_site_url + test_url + varnish_buster)
                wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'div')))


                self.assertTrue(self.isElementPresent('script[src="https://www.angieslist.com/sites/all/modules/jquery_update/replace/jquery/1.7/jquery.min.js?v=1.7.1"]'.replace('https://www.angieslist.com', self.visitor_site_url)))
                self.assertTrue(self.isElementPresent('script[src="/sites/all/libraries/rum/rum.min.js"]'))
