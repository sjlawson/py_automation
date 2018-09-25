import sys, string
from common.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

class TopCityH1TestCase(SeleniumTestCase):

    def test_topCityH1(self):
        if self.client:
            test_urls = ['/companylist/indianapolis',
                         '/companylist/cleveland',
                         '/companylist/milwaukee',
                         '/companylist/boston',
                         '/companylist/columbus',
                         '/companylist/cincinnati',
                         '/companylist/chicago',
                         '/companylist/minneapolis',
                         '/companylist/st-paul',
                         '/companylist/charlotte',
                         '/companylist/atlanta',
                         '/companylist/st-louis',
                         '/companylist/dallas',
                         '/companylist/fort-worth',
                         '/companylist/detroit',
                         '/companylist/houston',
                         '/companylist/kansas-city',
                         '/companylist/philadelphia',
                         '/companylist/pittsburgh',
                         '/companylist/san-diego',
                         '/companylist/phoenix',
                         '/companylist/tampa-bay',
                         '/companylist/los-angeles',
                         '/companylist/long-beach',
                         '/companylist/san-francisco',
                         '/companylist/san-jose',
                         '/companylist/san-antonio',
                         '/companylist/washington',
                         '/companylist/new-york-tristate-area',
                         '/companylist/denver',
                         '/companylist/portland',
                         '/companylist/seattle',
                         '/companylist/austin',
                         '/companylist/miami',
                         '/companylist/fort-lauderdale',
                         '/companylist/orlando',
                         '/companylist/sacramento',
                         '/companylist/nashville',
                         '/companylist/las-vegas',
                         '/companylist/baltimore',
                         '/companylist/virginia-beach',
                         '/companylist/norfolk',
                         '/companylist/providence',
                         '/companylist/greensboro',
                         '/companylist/winston-salem',
                         '/companylist/raleigh',
                         '/companylist/louisville',
                         '/companylist/grand-rapids',
                         '/companylist/hartford',
                         '/companylist/memphis',
                         '/companylist/jacksonville',
                         '/companylist/oklahoma-city',
                         '/companylist/birmingham',
                         '/companylist/richmond',
                         '/companylist/albany',
                         '/companylist/salt-lake-city',
                         '/companylist/fresno',
                         '/companylist/tucson',
                         '/companylist/asheville',
                         '/companylist/madison',
                         '/companylist/modesto',
                         '/companylist/el-paso',
                         '/companylist/harrisburg',
                         '/companylist/new-orleans']
            varnish_buster = "?adf54634y67e5u"
            errors = ""
            success_count = 0
            error_count = 0
            wait = WebDriverWait(self.client, 2)

            for test_url in test_urls:
                self.client.get(self.visitor_site_url + test_url + varnish_buster)
                wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'h1')))
                print("TESTING: " + test_url)
                try:
                    top_city_h1 = self.client.find_element_by_css_selector('h1').text
                    self.assertTrue(top_city_h1.find('-') == -1)
                    self.assertEqual(top_city_h1, string.capwords(top_city_h1))
                    success_count += 1
                    print("-------- H1 PASSED")
                except:
                    error_count += 1
                    errors += test_url + " --- H1 FAIL\n";
                    print("-------- H1 FAIL: ", sys.exc_info()[0])

            self.assertEqual(0, error_count)
            print(str(success_count) + " ASSERTIONS PASSED")
            print("ASSERTION FAILURES: " + (str(error_count) + " \n" + errors) if len(errors) else 'None!')


        else:
            print('Client not available')
