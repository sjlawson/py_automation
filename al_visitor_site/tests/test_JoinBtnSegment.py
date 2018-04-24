import sys
from tests.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

# NOTE: Must select Chrome for this test.
# currently only Chrome can test for console errors
class JoinBtnSegmentTestCase(SeleniumTestCase):
    
    def test_homePageJSError(self):
        wait = WebDriverWait(self.client, 20)
        if self.client:
            self.client.get(self.visitor_site_url)
            join_link = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#header-join')))
            join_link.click()
            console_logs = self.client.get_log('browser')
            # grab log right after click, hopefully before redirect
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#signup--signup-continue')))

            severe_logs = []
            for console_log in console_logs:
                if console_log['level'] == 'SEVERE':
                    severe_logs += [{'message':console_log['message'], 'source':console_log['source']}]
            if len(severe_logs) > 0:
                print("Console errors: ")
                print(severe_logs)
            self.assertFalse(len(severe_logs))
            # to make sure you get the logs *before* the page load, add something like:
            # jQuery('#header-join').on('click', function() { console.log('CLICK EVENT: ' + document.location.href);});
            # print("Full logs:")
            # print(console_logs)
        else:
            print("Client not available")
            
