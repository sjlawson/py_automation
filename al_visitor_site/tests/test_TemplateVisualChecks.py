import sys

from tests.SeleniumTestCase import SeleniumTestCase
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

class TemplateVisualChecks(SeleniumTestCase):

    def test_load_template_pages(self):
        print("\nThis test cycles through all page templates, waits for input, and if there are problems, prompts for description. When complete, it shows a summary of failures with respective URLs.")
        with open('./resources/template_urls.txt' ,'r') as fp:
            urls = [line for line in fp.readlines()]

        if not self.client:
            sys.exit()
            
        wait = WebDriverWait(self.client, 20)
        count = 0
        fails = 0
        fail_dict = {}
        for prod_url in urls:
            if count == 5:
                break
            count += 1
            test_url = prod_url.replace('https://www.angieslist.com', self.visitor_site_url)
            self.client.get(test_url)
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'body')))
            print("\n-------------\nDisplaying: %s" % test_url)
            qa_response = input("Press enter to continue or type 'fail' (or anything) if soemthing is not right:")
            if qa_response:
                fails += 1
                fail_dict[test_url] = input("Describe the problem (current page is already noted):")

        print(fail_dict)
