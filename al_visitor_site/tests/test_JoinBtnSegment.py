import sys, re, json, time
from tests.SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
# from selenium.webdriver.common.touch_actions import TouchActions
from selenium.webdriver.common.action_chains import ActionChains

# NOTE: Must select Chrome for this test.
# currently only Chrome can test for console errors
# Also tests that segment track call gets sent on click
class JoinBtnSegmentTestCase(SeleniumTestCase):

    def skip_test_homePageJSErrors(self):
        if self.test_browser == 1:
            print("JoinBtnSegment test is not supported by Firefox")
            self.assertTrue(self.test_browser != 1)
            
        if self.client:
            wait = WebDriverWait(self.client, 20)
            self.client.get(self.visitor_site_url)
            join_link = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#header-join')))
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#footer-join')))
            actions = ActionChains(self.client).move_to_element(join_link).click().perform()
            console_logs = self.client.get_log('browser')

            # check js errors
            severe_logs = []
            for console_log in console_logs:
                if console_log['level'] == 'SEVERE':
                    severe_logs += [{'message':console_log['message'], 'source':console_log['source']}]
            if len(severe_logs) > 0:
                print("Console errors: ")
                print(severe_logs)
            self.assertFalse(len(severe_logs))
            
    def test_homePageSegmentJoin(self):
        # if not self.use_proxy:
        #     print("Proxy must be enabled for this test.")
        #     self.assertTrue(self.use_proxy)
        seg_call_present = False    
        wait = WebDriverWait(self.client, 10)
        collectSeg = []
        if not self.client:
            return 0
        tries = 0
        # sometimes network problems prevent a valid test, so try again on the first fail
        while tries < 2:
            try:    
                self.client.get(self.visitor_site_url)
                join_link = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#header-join')))
                wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#footer-join')))
                ActionChains(self.client).move_to_element(join_link).click().perform()
            
                wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#footer--copyright-link-2')))
                perf_logs = self.client.get_log('performance')
                for perflog in perf_logs:
                    perf_msgs = json.loads(perflog['message'])
                    if 'request' in perf_msgs['message']['params'] and 'postData' in perf_msgs['message']['params']['request'] and perf_msgs['message']['params']['request']['postData'] is not None:
                        props_string = json.loads(perf_msgs['message']['params']['request']['postData'])['properties']
                        if props_string is not None:
                            collectSeg.append(props_string)
                if len(collectSeg):
                    break
            
            except json.decoder.JSONDecodeError:
                tries += 1
                print("JSON Parse problem, trying again...")
                        
        for seg_call in collectSeg:
            if 'activityLocation' in seg_call and seg_call['activityLocation'] == 'Visitor : Home':
                self.assertEqual(seg_call['description'], 'Join link in header')
                seg_call_present = True
                print("Segment call detected. activityLocation: %s | description: %s" % (seg_call['activityLocation'], seg_call['description']))
        try:
            self.assertTrue(seg_call_present)
            print("Segment call detected!")
        except:
            print("FAIL")
                 
        print(collectSeg)
        
