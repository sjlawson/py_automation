import sys

from common.SeleniumTestCase import SeleniumTestCase
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

class TemplateVisualChecks(SeleniumTestCase):

    def test_load_template_pages(self):
        """STALE TEST: remove or comment the 'return True' to enable """
        return True

        print("\nThis test cycles through all page templates, waits for input, and if there are problems, prompts for description. When complete, it shows a summary of failures with respective URLs.")
        with open('./al_visitor_site/resources/template_urls.txt' ,'r') as fp:
            urls = [line for line in fp.readlines()]

        if not self.client:
            sys.exit()

        wait = WebDriverWait(self.client, 20)
        count = 0
        fails = 0
        fail_details = []
        for prod_url in urls:
            count += 1
            test_url = prod_url.replace('https://www.angieslist.com', self.visitor_site_url)
            self.client.get(test_url)
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'body')))
            print("\n-------------\nDisplaying: %s" % test_url)
            qa_response = self.prompt_with_timeout("Press a key to stop auto-pageload (q quits)", 5)
            if qa_response is not None:
                if qa_response == 'q':
                    break
                else:
                    fails += 1
                    details = input("Describe the problem (current page is already noted): \n")
                    fail_details.append([test_url, details])
            qa_response = None

        if fail_details:
            print("\n---- SUMMARY ----")
        for fail_item in fail_details:
            print('Problem in %s- %s' % (fail_item[0], fail_item[1]))
            print('--------------------------')
