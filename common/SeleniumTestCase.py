import unittest, sys, datetime, time, os
import tty, termios
from time import sleep
import _thread
import requests
import datetime
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from browsermobproxy import Server
from contextlib import contextmanager
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.expected_conditions import staleness_of

class SeleniumTestCase(unittest.TestCase):
    client = None
    server = None
    proxy = None
    use_proxy = True if int(os.environ.get('USE_PROXY', 0)) else False
    base_url = os.environ.get('BASE_URL', 'http://wwwstg.angieslist.com')
    visitor_site_url = base_url # legacy setting
    legacy_url=os.environ.get('LEGACY_URL', 'http://qatools.angieslist.com')
    browser_clients = os.environ.get('BROWSER_CLIENTS', 'Chrome').split(',')
    test_browser = int(os.environ.get('TEST_BROWSER', 0))
    test_client = os.environ.get('TEST_CLIENT', 'Mac OSX 10.10')
    browsermob_path = os.environ.get('BROWSERMOB_PATH', './../browsermob-proxy/bin/browsermob-proxy')
    browsermob_port = int(os.environ.get('BROWSERMOB_PORT', '9090'))
    browsermob_host = os.environ.get('BROWSERMOB_HOST', '127.0.0.1')
    test_legacy_user=os.environ.get('LEGACY_USER', '')
    test_legacy_password=os.environ.get('LEGACY_PASSWORD', '')
    cbt_user=os.environ.get('CBT_USER', '')
    cbt_key=os.environ.get('CBT_KEY', '')
    cbt_flag = True if int(os.environ.get('CBT_FLAG', 1)) else False
    char_key = None
    caps = {}

    def setUp(self):
        method_name = self.browser_clients[self.test_browser]
        if self.use_proxy:
            self.server = Server(self.browsermob_path, {'host':self.browsermob_host,'port':self.browsermob_port})
            self.server.start()
            self.proxy = self.server.create_proxy()

        if self.cbt_flag:
            self.api_session = requests.Session()
            self.api_session.auth = (self.cbt_user,self.cbt_key)
            self.test_result = 'fail'
            self.caps['name'] = self.id()+' '+str(datetime.datetime.now())
            self.caps['build'] = '1.0'
            # caps['browserName'] = 'Safari'
            # caps['version'] = '8'
            self.caps['browserName'] = method_name
            self.caps['platform'] = self.test_client
            self.caps['screenResolution'] = '1366x768'
            self.caps['record_video'] = 'true'
            self.caps['record_network'] = 'true'
            self.caps['loggingPrefs'] = {'performance': 'INFO'}
        try:
            client_method = getattr(webdriver, method_name)
        except AttributeError:
            raise NotImplementedError("Class `{}` does not implement `{}`".format(webdriver.__class__.__name__, method_name))

        try:
            d = getattr(DesiredCapabilities, method_name.upper())
            d['loggingPrefs'] = { 'browser':'ALL','driver': 'ALL','performance': 'ALL'}
            if method_name == 'Chrome':
                ch_profile = webdriver.ChromeOptions()
                ch_profile.perfLoggingPrefs = {'enableNetwork': True, 'traceCategories': 'performance, devtools.network'}
                ch_profile.add_argument('incognito')
                ch_profile.add_argument('disable-extensions')
                ch_profile.add_argument('auto-open-devtools-for-tabs')
                ch_profile.add_argument('disable-browser-side-navigation')

                if self.use_proxy:
                    ch_profile.add_argument('--proxy-server=http://%s' % self.proxy.selenium_proxy().httpProxy)

                if self.cbt_flag:
                    browser = webdriver.Remote(desired_capabilities=self.caps,command_executor="http://%s:%s@hub.crossbrowsertesting.com:80/wd/hub"%(self.cbt_user,self.cbt_key))
                    browser.implicitly_wait(20)
                else:
                    browser = client_method(desired_capabilities=d, chrome_options=ch_profile)
            elif method_name == 'Firefox':
                fp = webdriver.FirefoxProfile()
                if self.use_proxy:
                    fp.set_proxy(self.proxy.selenium_proxy())
                if self.cbt_flag:
                    browser = webdriver.Remote(desired_capabilities=self.caps,command_executor="http://%s:%s@hub.crossbrowsertesting.com:80/wd/hub"%(self.cbt_user,self.cbt_key))
                    browser.implicitly_wait(20)
                else:
                    browser = client_method(capabilities=d,firefox_profile=fp)
            elif method_name == 'Safari':
                if self.use_proxy:
                    sa.set_proxy(self.proxy.selenium_proxy())
                if self.cbt_flag:
                    browser = webdriver.Remote(desired_capabilities=self.caps,command_executor="http://%s:%s@hub.crossbrowsertesting.com:80/wd/hub"%(self.cbt_user,self.cbt_key))
                    browser.implicitly_wait(20)
                else:
                    browser = webdriver.Safari()
            elif method_name == 'Edge':
                if self.cbt_flag:
                    browser = webdriver.Remote(desired_capabilities=self.caps,command_executor="http://%s:%s@hub.crossbrowsertesting.com:80/wd/hub"%(self.cbt_user,self.cbt_key))
                    browser.implicitly_wait(20)
                else:
                    print('Will run locally ONLY on a Windows machine')
                    browser = webdriver.Edge()
            else:
                browser = client_method()

            browser.set_window_size(2000, 1400)

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
        if self.cbt_flag:
            self.client.quit()
            self.api_session.put('https://crossbrowsertesting.com/api/v3/selenium/' + self.client.session_id,
                data={'action':'set_score', 'score':self.test_result})

    def isElementPresent(self, cssSelector):
        try:
            err_element = self.client.find_element_by_css_selector(cssSelector)
            return True
        except NoSuchElementException:
            return False
        return False

    def prompt_with_timeout(self, prompt, time_limit):
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        myThread = _thread.start_new_thread(self.keypress, ())
        print(prompt)
        for i in range(0, time_limit):
            self.char_key = None
            sleep(1)
            if self.char_key is not None:
                termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
                char = self.char_key
                self.char_key = None
                try:
                    _thread.exit()
                except SystemExit:
                    pass
                return char
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        print("Continuing...")
        self.char_key = None
        return None

    def getch(self):
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

    def keypress(self):
        self.char_key = self.getch()

    # Helper method to use after an event triggers a new page load
    # @param old_page - client.find_element_by_tag_name('html') grabbed BEFORE new page call
    # @param timeout - int seconds
    @contextmanager
    def wait_for_new_page_load(self, old_page, timeout=30):
        yield
        WebDriverWait(self.client, timeout).until(
            staleness_of(old_page)
        )
