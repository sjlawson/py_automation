from tests.SeleniumTestCase import SeleniumTestCase
from selenium.webdriver.support.ui import WebDriverWait, Select
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys
import time

elementCount=1
class LegacyContractBuilderTestCase(SeleniumTestCase):
    # Add individual contract items given Ad Element type (Call Center, Web Ad, Keyword, or Publication Coupon)
    def addContractItem(self, AdElementType, AdElementTypeSubset='', discount=90):
        global elementCount
        wait = WebDriverWait(self.client, 20)
        add_contract_item_button = self.client.find_element(By.XPATH, '//a[@id=\'addNewTab\']')
        add_contract_item_click = ActionChains(self.client).move_to_element(add_contract_item_button).click().perform()

        add_contract_screen = wait.until(EC.visibility_of_element_located((By.XPATH, '//div[@id=\'adElement'+str(elementCount)+'\']//textarea[@class=\'CouponTextArea\']')))

        category_selector = Select(self.client.find_element(By.XPATH, '//div[@id=\'adElement'+str(elementCount)+'\']//select[contains(@name, \'categorySelect\')]'))
        category_selector.select_by_index(4)

        adElementTypeSelector = Select(self.client.find_element(By.XPATH, '//div[@id=\'adElement'+str(elementCount)+'\']//select[contains(@name, \'adElementTypeSelect\')]'))
        adElementTypeSelector.select_by_index(1)

        #if AdElementTypeSubset != '':
        #    adElementSubset = Select(self.client.find_element(By.XPATH, '//select[contains(@name, \'AdElementsSelect\')]'))
        #    adElementSubset.select_by_index(1)

        # offer text is required
        offer_textarea = self.client.find_element(By.XPATH, '//div[@id=\'adElement'+str(elementCount)+'\']//textarea[contains(@id,\'CouponText\')]')
        offer_textarea_entry = ActionChains(self.client).move_to_element(offer_textarea).click().send_keys('test ad element text').perform()

        #set a discount for the contract items
        discountSelector = Select(self.client.find_element(By.XPATH, '//div[@id=\'adElement'+str(elementCount)+'\']//select[contains(@name, \'discountTypeSelect\')]'))
        discountSelector.select_by_index(1)
        discount_textarea = self.client.find_element(By.XPATH, '//div[@id=\'adElement'+str(elementCount)+'\']//input[contains(@name,\'PricingDiscount\')]')
        discount_textarea_entry = ActionChains(self.client).move_to_element(discount_textarea).click().send_keys(str(discount)).perform()

        # try to avoid getting a charge > $1,000 by grabbing the cheapest option
        minPriceIndex = 0
        prices_list = self.client.find_elements(By.XPATH,'//div[@id=\'adElement'+str(elementCount)+'\']//td[contains(@id,\'price-adElement\')]')
        for index, price_element in prices_list:
            price_string = price_element.text
            price_string_int = int(price_string.replace('$',''))
            if price_string_int <= prices_list.get(minPriceIndex) and price_string != '' and price_string != ' ':
                minPriceIndex = index

        #checkbox_to_click = self.client.find_element(By.XPATH,'(//td[@class=\'supreg price\'])['+str(minPriceIndex)+']')
        checkbox_to_click = self.client.find_elements(By.XPATH,'//div[@id=\'adElement'+str(elementCount)+'\']//input[@class=\'RSC\']')
        checkbox_click = ActionChains(self.client).move_to_element(checkbox_to_click[minPriceIndex]).click().perform()

        monthly_total = self.client.find_element(By.XPATH,'//div[@id=\'adElement'+str(elementCount)+'\']//td[contains(@class,\'TabTotalCardMonthly\')]').text

        loopmax = 500
        counter = 0
        while monthly_total == '$0.00' and counter <= loopmax:
            monthly_total = self.client.find_element(By.XPATH,'//div[@id=\'adElement'+str(elementCount)+'\']//td[contains(@class,\'TabTotalCardMonthly\')]').text
            counter+=1
        elementCount+=1

    def test_legacyLogin(self):
        if self.client:
            wait = WebDriverWait(self.client, 20)
            self.client.get(self.legacy_url)

            # check if we are already logged into legacy
            if len(self.client.find_elements(By.XPATH, '//span[text()=\'Sales\']')) > 0:
                logout_link = self.client.find_element(By.XPATH, '//a[@id=\'ctl00_loginPanel_ToolsLoginStatus\']')
                logout_action = ActionChains(self.client).move_to_element(logout_link).click().perform()

            user_box = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#ctl00_MainContentPlaceHolder_LogonControl_UserName')))
            user_input_action = ActionChains(self.client).move_to_element(user_box).click().send_keys(self.test_legacy_user).perform()

            password_box = self.client.find_element(By.CSS_SELECTOR, '#ctl00_MainContentPlaceHolder_LogonControl_Password')
            password_input_action = ActionChains(self.client).move_to_element(password_box).click().send_keys(self.test_legacy_password).perform()

            submit_button = self.client.find_element(By.CSS_SELECTOR, '#ctl00_MainContentPlaceHolder_LogonControl_LogOnSubmit')
            submit_action = ActionChains(self.client).move_to_element(submit_button).click().perform()

            wait.until(EC.element_to_be_clickable((By.XPATH, '//span[contains(text(),\'Sales\')]')))

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

    def test_activateMonthlyContract(self):
        global elementCount
        if self.client:
            wait = WebDriverWait(self.client, 20)
            self.client.get(self.legacy_url)

            # check if we are already logged into legacy
            if len(self.client.find_elements(By.XPATH, '//span[text()=\'Sales\']')) == 0:
                user_box = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#ctl00_MainContentPlaceHolder_LogonControl_UserName')))
                user_input_action = ActionChains(self.client).move_to_element(user_box).click().send_keys(self.test_legacy_user).perform()

                password_box = self.client.find_element(By.CSS_SELECTOR, '#ctl00_MainContentPlaceHolder_LogonControl_Password')
                password_input_action = ActionChains(self.client).move_to_element(password_box).click().send_keys(self.test_legacy_password).perform()

                submit_button = self.client.find_element(By.CSS_SELECTOR, '#ctl00_MainContentPlaceHolder_LogonControl_LogOnSubmit')
                submit_action = ActionChains(self.client).move_to_element(submit_button).click().perform()

            sales_tab = wait.until(EC.element_to_be_clickable((By.XPATH, '//span[contains(text(),\'Sales\')]')))
            expand_action = ActionChains(self.client).move_to_element(sales_tab).click().perform()

            contract_management_tab = wait.until(EC.element_to_be_clickable((By.XPATH, '//span[contains(text(),\'Contract Management\')]')))
            expand_action = ActionChains(self.client).move_to_element(contract_management_tab).click().perform()

            contract_list = wait.until(EC.element_to_be_clickable((By.XPATH, '//a[contains(text(),\'Contract List\')]')))
            contract_list_click = ActionChains(self.client).move_to_element(contract_list).click().perform()

            contract_add = wait.until(EC.element_to_be_clickable((By.XPATH, '//a[@id=\'ctl00_MainContentPlaceHolder_addNewLink\']'))) 
            contract_add_click = ActionChains(self.client).move_to_element(contract_add).click().perform()

            spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, '//input[@id=\'SPID\']')))
            spid_entry = ActionChains(self.client).move_to_element(spid_box).click().send_keys('65133').perform()

            outside_of_inputs = self.client.find_element(By.CSS_SELECTOR, '#ctl00_MainContentPlaceHolder_WorkFlowStatus')
            finalize_entry = ActionChains(self.client).move_to_element(outside_of_inputs).click().perform()

            contract_title_box = wait.until(EC.element_to_be_clickable((By.XPATH, '//textarea[@id=\'ContractTitle\']')))
            contract_title_entry = ActionChains(self.client).move_to_element(contract_title_box).click().send_keys('test contract').perform()

            additional_detail_box = self.client.find_element(By.XPATH, '//textarea[@id=\'OCAAssociateMessage\']')
            additional_detail_entry = ActionChains(self.client).move_to_element(additional_detail_box).click().send_keys('test contract').perform()

            self.addContractItem(self, 'Call Center')
            self.addContractItem(self, 'Web Ad')

            # publish
            publish_box = self.client.find_element(By.XPATH, '//a[@id=\'PublishContract\']')
            publish_box_click = ActionChains(self.client).move_to_element(publish_box).click().perform()

            business_center_screen = wait.until(EC.visibility_of_element_located((By.XPATH, '//select[@id=\'ShowInBusinessCenterValues\']')))
            business_center_select = Select(self.client.find_element(By.XPATH, '//select[@id=\'ShowInBusinessCenterValues\']'))
            business_center_select.select_by_index(1)

            #submit button 
            submit_publish = self.client.find_element(By.XPATH, '//span[text()=\'Submit\']')
            submit_publish_click = ActionChains(self.client).move_to_element(submit_publish).click().perform()

            try:
                wait.until(EC.alert_is_present())
                alert = self.client.switch_to.alert
                alert.accept()
            except TimeoutException:
                print("No pricing violations.")


            try:
                spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, '//input[@id=\'SPID\']')))
            except TimeoutException:
                print("waiting for activation")

            activate_box = self.client.find_element(By.XPATH, '//a[@id=\'ActivateContract\']')
            activate_box_click = ActionChains(self.client).move_to_element(activate_box).click().perform()

            try:
                spid_box = wait.until(EC.visibility_of_element_located((By.XPATH, '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Next\')]')))
            except TimeoutException:
                print("waiting for wizard")

            next_button = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Next\')]')
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            try:
                spid_box = wait.until(EC.visibility_of_element_located((By.XPATH, '//div[@id=\'ActivationWizard\']//select[@name=\'activationPaymentTermDropDownList\']')))
            except TimeoutException:
                print("waiting for payment terms")

            payment_term_select = Select(self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//select[@name=\'activationPaymentTermDropDownList\']'))
            payment_term_select.select_by_index(1)

            reason_select = Select(self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//select[@name=\'revenueChangeReasonDropDownList\']'))
            reason_select.select_by_index(1)

            sales_box = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//input[@id=\'salesForceOpportunityIdTextBox\']')
            sales_box_click = ActionChains(self.client).move_to_element(sales_box).click().send_keys('QAcontract').perform()
            
            sales_box = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//input[@id=\'activationSignedDate\']')
            sales_box_click = ActionChains(self.client).move_to_element(sales_box).click().send_keys('06/25/2018'+Keys.ENTER).perform()
            time.sleep(0.5)
            ActionChains(self.client).move_to_element(self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']')).click().perform()
            time.sleep(0.5)
            try:
                spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, '//div[@id=\'ActivationWizard\']//input[@id=\'activationCommissionContractValueDate\']')))
            except TimeoutException:
                print("waiting for calendar to close")

            sales_box = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//input[@id=\'activationCommissionContractValueDate\']')
            sales_box_click = ActionChains(self.client).move_to_element(sales_box).click().send_keys('06/25/2018'+Keys.ENTER).perform()
            time.sleep(0.5)
            ActionChains(self.client).move_to_element(self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']')).click().perform()
            time.sleep(0.5)
            try:
                spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, '//div[@id=\'ActivationWizard\']//select[@name=\'firstPaymentTypeDropDownList\']')))
            except TimeoutException:
                print("waiting for calendar to close")

            reason_select = Select(self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//select[@name=\'firstPaymentTypeDropDownList\']'))
            reason_select.select_by_index(1)

            reason_select = Select(self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//select[@name=\'firstPaymentProfileDropDownList\']'))
            #get last option since it is most likely to succeed
            options = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//select[@name=\'firstPaymentProfileDropDownList\']').find_elements_by_tag_name('option')
            reason_select.select_by_index(len(options)-1)

            use_same_profile_box = self.client.find_element(By.XPATH, '//input[@id=\'chkUseFirstPaymentChoicesForRemainingPayment\']')
            use_same_profile_box_click = ActionChains(self.client).move_to_element(use_same_profile_box).click().perform()

            next_button = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Next\')]')
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            final_screen = wait.until(EC.visibility_of_element_located((By.XPATH, '//th[contains(text(),\'Ad Type\')]')))
            next_button = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Next\')]')
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            final_screen = wait.until(EC.visibility_of_element_located((By.XPATH, '//th[contains(text(),\'Invoice Date\')]')))
            next_button = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Next\')]')
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            final_screen = wait.until(EC.visibility_of_element_located((By.XPATH, '//div[@id=\'activationMessage\']')))
            next_button = self.client.find_element(By.XPATH, '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Finish\')]')
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

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