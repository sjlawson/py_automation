import sys
from common.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By


class CheckingSourceTestCase(SeleniumTestCase):

    def test_pageSourceTest(self):
        if self.client:
            test_urls = [ "/",
                          "/appliances/",
                          "/articles/",
                          "/articles/5-transmission-problems-you-cant-ignore.htm",
                          "/articles/how-find-and-hang-hammock.htm",
                          "/articles/how-to-properly-hang-artwork.htm",
                          "/articles/selling-your-home-means-selling-lifestyle.htm",
                          "/home-improvement/",
                          '/basements-and-foundations/',
                          "/auto/",
                          "/videos/",
                          "/how-it-works.htm",
                          "/aboutus.htm",
                          "/hvac/",
                          "/faq/",
                          "/photos/",
                          "/photos/diy-tiny-houses.htm",
                          "/image/granite-countertops-and-stainless-steel-appliances-kitchen/",
                          "/videos/",
                          "/videos/video-dont-let-fear-result-air-duct-cleaning-scam.htm",
                          "/in-the-press.htm",
                          "/press-backlinks/",
                          "/press-backlinks/how-handle-bad-contractor.htm",
                          "/news-releases/",
                          "/news-releases/angie-s-list-rescue-free-consumer-survival-guide-covers-home-auto-property-even-pets/"
                          "/author-profiles/",
                          "/author/angie-hicks.htm",
                          "/quick-tour.htm",
                          "/research/",
                          "/research/handyman/"
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


                self.assertTrue(self.isElementPresent('script[src="https://www.angieslist.com/sites/all/modules/jquery_update/replace/jquery/1.7/jquery.min.js?v=1.7.2"]'.replace('https://www.angieslist.com', self.visitor_site_url)))
                self.assertTrue(self.isElementPresent('script[src="/sites/all/libraries/rum/rum.min.js"]'))
            self.test_result = 'pass'
