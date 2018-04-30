import sys, re, json
from tests.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
# from selenium.webdriver.common.touch_actions import TouchActions
from selenium.webdriver.common.action_chains import ActionChains

# NOTE: Must select Chrome for this test.
# currently only Chrome can test for console errors
class JoinBtnSegmentTestCase(SeleniumTestCase):
    
    def test_homePageJSError(self):
        wait = WebDriverWait(self.client, 20)
        collectSeg = []
        if self.client:
            # har load
            self.proxy.new_har(options={'captureHeaders':True, 'captureContent': True})
            self.client.get(self.visitor_site_url)
            #join_link = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#business-center')))
            join_link = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#header-join')))
            actions = ActionChains(self.client).move_to_element(join_link).click().perform()
            console_logs = self.client.get_log('browser')
            # grab log right after click, before redirect
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#signup--signup-continue')))
            # wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#block-block-4')))
            har = self.proxy.har
            for ent in har['log']['entries']:
                if re.search(r'api\.segment\.io\/v1\/t', ent['request']['url']):
                    collectSeg.append(json.loads(ent['request']['postData']['text'])['properties'])

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
            print(collectSeg)
        else:
            print("Client not available")
