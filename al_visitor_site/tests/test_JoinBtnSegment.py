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
        if self.client:
            #self.proxy.new_har(options={'captureHeaders':False, 'captureContent': True})
            self.client.get(self.visitor_site_url)
            join_link = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#header-join')))
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#footer-join')))
            actions = ActionChains(self.client).move_to_element(join_link).click().perform()

            # time.sleep(1)
            #script_to_execute = "var performance = window.performance || window.mozPerformance || window.msPerformance || window.webkitPerformance || {}; var network = performance.getEntries() || {}; return network;";
            #network_data = self.client.execute_script(script_to_execute)
            # print("Network data: ", network_data)
            
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#footer--copyright-link-2')))
            
            perf_logs = self.client.get_log('performance')
            for perflog in perf_logs:
                perf_msgs = json.loads(perflog['message'])
                if 'request' in perf_msgs['message']['params'] and 'postData' in perf_msgs['message']['params']['request'] and perf_msgs['message']['params']['request']['postData']:
                    props_string = json.loads(perf_msgs['message']['params']['request']['postData'])['properties']
                    if props_string is not None:
                        collectSeg.append(props_string)
                
            #har = self.proxy.har
            #for ent in har['log']['entries']:
            #    if re.search(r'api\.segment\.io\/v1\/t', ent['request']['url']):
            #        collectSeg.append(json.loads(ent['request']['postData']['text'])['properties'])

            
            for seg_call in collectSeg:
                if 'activityLocation' in seg_call and seg_call['activityLocation'] == 'Visitor : Home':
                    self.assertEqual(seg_call['description'], 'Join link in header')
                    seg_call_present = True
                    print("Segment call detected. activityLocation: %s | description: %s" % (seg_call['activityLocation'], seg_call['description']))
            try:
                self.assertTrue(seg_call_present)
            except:
                print("FAIL")
                # with open("harlog.js", 'w') as harf:
                #     harf.write(json.dumps(har['log']['entries']))
                # input("Press enter to continue")
                
            print(collectSeg)
        else:
            print("Client not available")
