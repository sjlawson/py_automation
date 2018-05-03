import unittest, sys, datetime, time, os
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from browsermobproxy import Server

class SeleniumTestCase(unittest.TestCase):
    client = None
    server = None
    proxy = None
    use_proxy = True if int(os.environ.get('USE_PROXY', 0)) else False
    visitor_site_url = os.environ.get('VISITOR_SITE_URL', 'http://angiesmr2stg.prod.acquia-sites.com')
    browser_clients = os.environ.get('BROWSER_CLIENTS', 'Chrome').split(',')
    test_browser = int(os.environ.get('TEST_BROWSER', 0))
    browsermob_path = os.environ.get('BROWSERMOB_PATH', './../browsermob-proxy/bin/browsermob-proxy')
    browsermob_port = int(os.environ.get('BROWSERMOB_PORT', '9090'))
    browsermob_host = os.environ.get('BROWSERMOB_HOST', '127.0.0.1')
    
    def setUp(self):
        if self.use_proxy:
            self.server = Server(self.browsermob_path, {'host':self.browsermob_host,'port':self.browsermob_port})
            self.server.start()
            self.proxy = self.server.create_proxy()

        method_name = self.browser_clients[self.test_browser]
        try:
            client_method = getattr(webdriver, method_name)
        except AttributeError:
            raise NotImplementedError("Class `{}` does not implement `{}`".format(webdriver.__class__.__name__, method_name))
            
        try:
            d = getattr(DesiredCapabilities, method_name.upper())
            d['loggingPrefs'] = { 'browser':'ALL' }
            if method_name == 'Chrome':
                ch_profile = webdriver.ChromeOptions()
                if self.use_proxy:
                    ch_profile.add_argument('--proxy-server=http://%s' % self.proxy.selenium_proxy().httpProxy)
                browser = client_method(desired_capabilities=d, chrome_options=ch_profile)
            elif method_name == 'Firefox':
                fp = webdriver.FirefoxProfile()
                if self.use_proxy:
                    fp.set_proxy(self.proxy.selenium_proxy())
                browser = client_method(capabilities=d,firefox_profile=fp)                
            else:
                browser = client_method()
            
            self.client = browser
        except:
            print('Web browser not available')
            self.skiptest('Browser not available')
        
        time.sleep(1)

    def tearDown(self):
        if self.client:
            self.client.close()
        if self.server:
            self.server.stop()

    def isElementPresent(self, cssSelector):
        try:
            err_element = self.client.find_element_by_css_selector(cssSelector)
            return True
        except NoSuchElementException:
            return False
        return False
