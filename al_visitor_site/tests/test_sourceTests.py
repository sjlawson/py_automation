import sys
from tests.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By


class CheckingSourceTestCase(SeleniumTestCase):

    def test_pageSourceTest(self):
        if self.client:
            test_urls = [ "/",
                          "/articles/",
                          "/home-improvement/",
                          "/auto/",
                          "/videos/",
                          "/how-it-works.htm",
                          "/aboutus.htm",
                          "/hvac/",
                          "/faq/",
                          "/photos/",
                          "/videos/",
                          "/videos/video-dont-let-fear-result-air-duct-cleaning-scam.htm",
                          "/in-the-press.htm",
                          "/press-backlinks/",
                          "/author/angie-hicks.htm",
                          "/companylist/",
                          "/companylist/us/in/",
                          "/companylist/us/in/greenwood/a-new-horizon-renovations-llp-reviews-6422533.htm",
                          "/companylist/us/ga/winder/1-a-team-home-repair-and-waterproofing-reviews-7804577.htm",
                          "/companylist/us/in/indianapolis/service-plus-heating-cooling-plumbing-reviews-140447.htm",
                          "/companylist/us/in/greenwood/a-new-horizon-renovations-llp-reviews-6422533.htm",
                          "/companylist/us/nc/candler/blue-ridge-construction-reviews-7682402.htm",
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
