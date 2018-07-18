from browsermobproxy import Server
from selenium import webdriver
import re, sys, time, json
from urllib.parse import urlparse
from datetime import datetime
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains


def cleanup():
    s.stop()
    driver.quit()

proxy_path = './../browsermob-proxy/bin/browsermob-proxy'
phantomjs_path = '/usr/local/lib/node_modules/phantomjs-prebuilt/lib/phantom/bin/phantomjs'
s = Server(proxy_path, {'port':9090, 'host':'127.0.0.1'})
s.start()
proxy = s.create_proxy()
proxy_address = "--proxy=%s" % proxy.selenium_proxy().httpProxy
service_args = [proxy_address, '--ignore-ssl-errors=yes', '--ssl-protocol=any']  # so that i can do https connections
driver = webdriver.PhantomJS(executable_path=phantomjs_path, service_args=service_args)
driver.set_window_size(1400, 1050)
wait = WebDriverWait(driver, 5)
urlLists = []
collectTags = []
gaCollect = 0
varList = []
collectEnt = []

# for x in range(0,2): # I want to ask the user for 2 inputs
#     url = input("Enter a website to find GA on: ")
#     time.sleep(2.0)
#     urlLists.append(url)

#     if not url:
#         print("You need to type something in...here")
#         sys.exit()

urlLists = ['http://angieslist.local',]
        
for urlList in urlLists:
    print(urlList, 'start 2nd loop') #printing for debug purpose, no need for this
    if not urlList:
        print('Your Url list is empty')
        sys.exit()

    proxy.new_har(options={'captureHeaders':True, 'captureContent': True})
    driver.get(urlList)
    join_link = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#header-join')))
    actions = ActionChains(driver).move_to_element(join_link).click().perform()
    wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, '#signup--signup-continue')))
    
    proxy.wait_for_traffic_to_stop(15, 30) #<-- tried this but did not do anything
    for ent in proxy.har['log']['entries']:
        gaCollect = (ent['request']['url'])
        # print(gaCollect)
        if re.search(r'api\.segment\.io\/v1\/t', gaCollect):
            print('Found Segment')
            collectTags.append(gaCollect)
            collectEnt.append(ent)
            break
    if len(collectTags):
        print("TAGS")
        print(collectTags)
        print("ENT")
        raw_json = json.loads(collectEnt[0]['request']['postData']['text'])
        print(raw_json['properties'])
    else:
        print("Did not find seg calls")

cleanup()
