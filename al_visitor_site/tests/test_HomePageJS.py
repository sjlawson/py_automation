from tests.SeleniumTestCase import SeleniumTestCase
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.action_chains import ActionChains

def HomePageJSTestCase(SeleniumTestCase):

    ##
    # !CURRENTLY INACTIVE!
    # Click the join button in header and check for JS errors
    def skiptest_homePageJSErrors(self):
        if self.test_browser != 0:
            print("JoinBtnSegment test is not supported by Firefox")
            self.assertTrue(self.test_browser == 0)

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
