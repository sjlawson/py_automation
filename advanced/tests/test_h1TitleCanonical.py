import sys
from tests.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

##
# 
#
class TitleCanonicalH1TestCase(SeleniumTestCase):

    def test_titleCanonicalH1(self):
        if self.client:
            test_urls = [ "/",
                          "/articles/",
                          "/home-improvement/",
                          "/auto/",
                          "/videos/",
                          "/videos/video-dont-let-fear-result-air-duct-cleaning-scam.htm",
                          "/videos/video-how-install-led-kitchen-cabinet-lighting.htm",
                          "/appliances/",
                          "/research/carpet-cleaning/",
                          "/basements-and-foundations/",
                          "/research/kitchen-cabinets/",
                          "/articles/selling-your-home-means-selling-lifestyle.htm",
                          "/articles/common-tree-service-scams-avoid.htm",
                          "/articles/how-avoid-common-plumbing-scams.htm",
                          "/articles/how-find-and-hang-hammock.htm",
                          "/articles/5-transmission-problems-you-cant-ignore.htm",
                          "/articles/why-hospital-patients-increasingly-face-pricey-surprise.htm",
                          "/articles/how-to-properly-hang-artwork.htm",
                          "/photos/",
                          "/photos/diy-tiny-houses.htm",
                          "/image/granite-countertops-and-stainless-steel-appliances-kitchen/",
                          "/author-profiles/",
                          "/author/angie-hicks.htm",
                          "/research/handyman/",
                          "/companylist/",
                          "/companylist/us/",
                          "/companylist/us/in/",
                          "/companylist/us/in/fishers/",
                          "/companylist/indianapolis/",
                          "/companylist/us/in/fishers/tree-service.htm",
                          "/companylist/us/in/fishers/service-plus-heating-cooling-plumbing-reviews-140447.htm",
                          "/companylist/cleaning.htm",
                          "/in-the-press.htm",
                          "/press-backlinks/",
                          "/press-backlinks/how-handle-bad-contractor.htm",
                          "/news-releases/",
                          "/news-releases/angie-s-list-rescue-free-consumer-survival-guide-covers-home-auto-property-even-pets/",
                          "/news-clips/angie-shares-secrets-her-balancing-act-today.htm",
                          "/services.htm",
                          "/quick-tour.htm",
                          "/how-it-works.htm",
                          "/aboutus.htm",
                          "/photos/landscaping-ideas.htm",
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
    
                print("TESTING: " + test_url)
                try:
                    h1_list = self.client.find_elements_by_css_selector('h1')
                    self.assertTrue(len(h1_list) == 1)
                    success_count += 1
                    print("-------- H1 PASSED")
                except:
                    error_count += 1
                    errors += test_url + " --- H1 FAIL\n";
                    print("-------- H1 FAIL: ", sys.exc_info()[0])
        
                try:
                    title = self.client.title
                    self.assertTrue(len(title) > 10)
                    if test_url != '/':
                        self.assertTrue(title.rstrip()[-14:] == "| Angie's List")
                    success_count += 1
                    print("-------- TITLE PASSED")
                except:
                    error_count += 1
                    errors += test_url + " --- TITLE FAIL: " + title + "\n";
                    print("-------- TITLE FAIL: " + title + " ", sys.exc_info()[0])
        
                try:
                    canonical = self.client.find_element_by_css_selector('link[rel="canonical"]')
                    self.assertTrue(len(canonical.get_attribute('href')) > 1)
                    success_count += 1
                    print("-------- CANONICAL PASSED")
                except:
                    error_count += 1
                    errors += test_url + " --- CANONICAL FAIL\n";
                    print("-------- CANONICAL FAIL: ", sys.exc_info()[0])

                try:
                    self.assertFalse(self.isElementPresent('.alert.alert--error'))
                    print("-------- NO ERROR NOTICE")
                except:
                    error_count += 1
                    errors += test_url + " --- PAGE HAS ERROR NOTICE\n"
                    print("-------- PAGE HAS ERROR NOTICE")
                print("")
                
            print(str(success_count) + " ASSERTIONS PASSED")
            print("ASSERTION FAILURES: " + (str(error_count) + " \n" + errors) if len(errors) else 'None!')

        else:
            print("Client not available")
            
            # print(start_time)
            # print("END TIME: " + str(datetime.datetime.now()))

            # test.assertFalse(error_count)
