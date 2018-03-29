import unittest, sys, datetime, time, os
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

class SeleniumTestCase(unittest.TestCase):
    client = None
    visitor_site_url = os.environ.get('VISITOR_SITE_URL', 'http://angiesmr2stg.prod.acquia-sites.com')
    browser_clients = os.environ.get('BROWSER_CLIENTS', 'Chrome').split(',')
    test_browser = int(os.environ.get('TEST_BROWSER', 0))
    
    def setUp(self):
        method_name = self.browser_clients[self.test_browser]
        try:
            client_method = getattr(webdriver, method_name)
        except AttributeError:
            raise NotImplementedError("Class `{}` does not implement `{}`".format(webdriver.__class__.__name__, method_name))
            
        try:
            d = getattr(DesiredCapabilities, method_name.upper())
            d['loggingPrefs'] = { 'browser':'ALL' }
            if method_name == 'Chrome':
                browser = client_method(desired_capabilities=d)
            elif method_name == 'Firefox':
                fp = webdriver.FirefoxProfile()
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

    def isElementPresent(self, cssSelector):
        try:
            err_element = self.client.find_element_by_css_selector(cssSelector)
            return True
        except NoSuchElementException:
            return False
        return False
