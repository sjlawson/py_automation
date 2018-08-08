from tests.SeleniumTestCase import SeleniumTestCase
from LegacyPageObjects import LegacyPageObjects
from selenium.webdriver.support.ui import WebDriverWait, Select
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys

import time
import csv

class LegacyContractBuilderTestCase(SeleniumTestCase):
    # Add individual contract items given Ad Element type (Call Center, Web Ad, Keyword, or Publication Coupon)
    def addContractItem(self, pageObject, AdElementType, AdElementTypeSubset = '', discount = 90):
        elementCount = pageObject.getElementCount()
        print(AdElementType)
        wait = WebDriverWait(self.client, 20)
        add_contract_item_button = self.client.find_element(By.XPATH, pageObject.add_contract_item_button)
        add_contract_item_click = ActionChains(self.client).move_to_element(add_contract_item_button).click().perform()
        print(pageObject.add_contract_screen)
        add_contract_screen = wait.until(EC.visibility_of_element_located((By.XPATH, pageObject.add_contract_screen)))

        category_selector = Select(self.client.find_element(By.XPATH, pageObject.contract_category_selector))
        category_selector.select_by_index(4)

        adElementTypeSelector = Select(self.client.find_element(By.XPATH, pageObject.contract_element_type_selector))
        adElementTypeSelector.select_by_visible_text(AdElementType)

        if AdElementTypeSubset != '':
            adElementSubset = Select(self.client.find_element(By.XPATH, pageObject.contract_ad_element_type_subset))
            adElementSubset.select_by_visible_text(AdElementTypeSubset)

        # offer text is required
        offer_textarea = self.client.find_element(By.XPATH, pageObject.contract_offer_text_area)
        offer_textarea_entry = ActionChains(self.client).move_to_element(offer_textarea).click().send_keys('test ad element text').perform()

        #set a discount for the contract items
        discountSelector = Select(self.client.find_element(By.XPATH, pageObject.contract_discount_selector))
        discountSelector.select_by_index(1)
        discount_textarea = self.client.find_element(By.XPATH, pageObject.contract_discount_textbox)
        discount_textarea_entry = ActionChains(self.client).move_to_element(discount_textarea).click().send_keys(str(discount)).perform()

        # try to avoid getting a charge > $1,000 by grabbing the cheapest option
        minPriceIndex = 0
        prices_list = self.client.find_elements(By.XPATH, pageObject.contract_pricing_list)
        for index, price_element in prices_list:
            price_string = price_element.text
            price_string_int = int(price_string.replace('$',''))
            if price_string_int <= prices_list.get(minPriceIndex) and price_string != '' and price_string != ' ':
                minPriceIndex = index

        #checkbox_to_click = self.client.find_element(By.XPATH,'(//td[@class=\'supreg price\'])['+str(minPriceIndex)+']')
        checkbox_to_click = self.client.find_elements(By.XPATH, pageObject.contract_pricing_checkbox)
        checkbox_click = ActionChains(self.client).move_to_element(checkbox_to_click[minPriceIndex]).click().perform()

        monthly_total = self.client.find_element(By.XPATH, pageObject.contract_monthly_total).text

        loopmax = 500
        counter = 0
        while monthly_total == '$0.00' and counter <= loopmax:
            monthly_total = self.client.find_element(By.XPATH, pageObject.contract_tab_total_card).text
            counter+=1
        elementCount+=1
        pageObject.setElementCount(elementCount)
        pageObject.updateElementCount()

    def test_legacyLogin(self):
        if self.client:
            wait = WebDriverWait(self.client, 20)
            self.client.get(self.legacy_url)

            # check if we are already logged into legacy
            if len(self.client.find_elements(By.XPATH, pageObject.sales_lefthand_nav)) > 0:
                logout_link = self.client.find_element(By.XPATH, pageObject.logout_link)
                logout_action = ActionChains(self.client).move_to_element(logout_link).click().perform()

            user_box = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, pageObject.user_box_css)))
            user_input_action = ActionChains(self.client).move_to_element(user_box).click().send_keys(self.test_legacy_user).perform()

            password_box = self.client.find_element(By.CSS_SELECTOR, pageObject.password_box_css)
            password_input_action = ActionChains(self.client).move_to_element(password_box).click().send_keys(self.test_legacy_password).perform()

            submit_button = self.client.find_element(By.CSS_SELECTOR, pageObject.submit_button_css)
            submit_action = ActionChains(self.client).move_to_element(submit_button).click().perform()

            wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.sales_lefthand_nav)))

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

    def test_activateMonthlyContract(self, SPID_string='58464'):
        if self.client:
            pageObject = LegacyPageObjects()
            elementCount = pageObject.getElementCount()
            wait = WebDriverWait(self.client, 20)
            self.client.get(self.legacy_url)

            # check if we are already logged into legacy
            if len(self.client.find_elements(By.XPATH, pageObject.sales_lefthand_nav)) == 0:
                user_box = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, pageObject.user_box_css)))
                user_input_action = ActionChains(self.client).move_to_element(user_box).click().send_keys(self.test_legacy_user).perform()

                password_box = self.client.find_element(By.CSS_SELECTOR, pageObject.password_box_css)
                password_input_action = ActionChains(self.client).move_to_element(password_box).click().send_keys(self.test_legacy_password).perform()

                submit_button = self.client.find_element(By.CSS_SELECTOR, pageObject.submit_button_css)
                submit_action = ActionChains(self.client).move_to_element(submit_button).click().perform()

            sales_tab = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.sales_lefthand_nav)))
            expand_action = ActionChains(self.client).move_to_element(sales_tab).click().perform()

            contract_management_tab = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.contract_management_tab)))
            expand_action = ActionChains(self.client).move_to_element(contract_management_tab).click().perform()

            contract_list = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.contract_list)))
            contract_list_click = ActionChains(self.client).move_to_element(contract_list).click().perform()

            contract_add = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.contract_add_link))) 
            contract_add_click = ActionChains(self.client).move_to_element(contract_add).click().perform()

            spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.spid_box)))
            spid_entry = ActionChains(self.client).move_to_element(spid_box).click().send_keys(SPID_string).perform()

            outside_of_inputs = self.client.find_element(By.CSS_SELECTOR, pageObject.defocus_box_css)
            finalize_entry = ActionChains(self.client).move_to_element(outside_of_inputs).click().perform()

            contract_title_box = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.contract_title_box)))
            contract_title_entry = ActionChains(self.client).move_to_element(contract_title_box).click().send_keys('test contract').perform()

            additional_detail_box = self.client.find_element(By.XPATH, pageObject.additional_detail_box)
            additional_detail_entry = ActionChains(self.client).move_to_element(additional_detail_box).click().send_keys('test contract').perform()

            self.addContractItem(pageObject, 'Call Center', AdElementTypeSubset='AL.COM Call Center Ad', discount=90)
            self.addContractItem(pageObject, 'Web Ad', AdElementTypeSubset='', discount=90)

            # publish
            publish_box = self.client.find_element(By.XPATH, pageObject.publish_box)
            publish_box_click = ActionChains(self.client).move_to_element(publish_box).click().perform()

            business_center_screen = wait.until(EC.visibility_of_element_located((By.XPATH, pageObject.business_center_select)))
            business_center_select = Select(self.client.find_element(By.XPATH, pageObject.business_center_select))
            business_center_select.select_by_index(1)

            # submit button 
            submit_publish = self.client.find_element(By.XPATH, pageObject.submit_publish)
            submit_publish_click = ActionChains(self.client).move_to_element(submit_publish).click().perform()

            try:
                wait.until(EC.alert_is_present())
                alert = self.client.switch_to.alert
                alert.accept()
            except TimeoutException:
                print("No pricing violations.")

            try:
                spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.spid_box)))
            except TimeoutException:
                print("waiting for activation")

            activate_box = self.client.find_element(By.XPATH, pageObject.activate_box)
            activate_box_click = ActionChains(self.client).move_to_element(activate_box).click().perform()

            try:
                spid_box = wait.until(EC.visibility_of_element_located((By.XPATH, pageObject.wizard_activate)))
            except TimeoutException:
                print("waiting for wizard")

            # handle case where license needs to be updated
            if len(self.client.find_elements(By.XPATH, pageObject.activation_signature_dropdown)) > 0:
                license_select = Select(self.client.find_element(By.XPATH, pageObject.activation_signature_dropdown))
                license_select.select_by_visible_text('Yes, I am appropriately licensed for my trade')
                license_update_button = self.client.find_element(By.XPATH, pageObject.update_license)
                license_update_click = ActionChains(self.client).move_to_element(license_update_button).click().perform()
                wait.until(EC.alert_is_present())
                alert = self.client.switch_to.alert
                alert.accept()

            if len(self.client.find_elements(By.XPATH, pageObject.waive_validation)) > 0:
                wave_restrictions = self.client.find_element(By.XPATH, pageObject.waive_validation)
                wave_restrictions_click = ActionChains(self.client).move_to_element(wave_restrictions).click().perform()

            next_button = self.client.find_element(By.XPATH, pageObject.next_page)
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            try:
                spid_box = wait.until(EC.visibility_of_element_located((By.XPATH, pageObject.payment_terms)))
            except TimeoutException:
                print("waiting for payment terms")

            payment_term_select = Select(self.client.find_element(By.XPATH, pageObject.payment_terms))
            payment_term_select.select_by_index(1)

            reason_select = Select(self.client.find_element(By.XPATH, pageObject.payment_reason))
            reason_select.select_by_index(1)

            sales_box = self.client.find_element(By.XPATH, pageObject.sales_box)
            sales_box_click = ActionChains(self.client).move_to_element(sales_box).click().send_keys('QAcontract').perform()
            
            sales_box = self.client.find_element(By.XPATH, pageObject.signed_date_box)
            sales_box_click = ActionChains(self.client).move_to_element(sales_box).click().send_keys('06/25/2018'+Keys.ENTER).perform()

            time.sleep(0.5)
            ActionChains(self.client).move_to_element(self.client.find_element(By.XPATH, pageObject.generic_wizard)).click().perform()
            time.sleep(0.5)
            try:
                spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.cvv_date_box)))
            except TimeoutException:
                print("waiting for calendar to close")

            sales_box = self.client.find_element(By.XPATH, pageObject.cvv_date_box)
            sales_box_click = ActionChains(self.client).move_to_element(sales_box).click().send_keys('06/25/2018'+Keys.ENTER).perform()
            time.sleep(0.5)
            ActionChains(self.client).move_to_element(self.client.find_element(By.XPATH, pageObject.generic_wizard)).click().perform()
            time.sleep(0.5)
            try:
                spid_box = wait.until(EC.element_to_be_clickable((By.XPATH, pageObject.first_payment_dropdown)))
            except TimeoutException:
                print("waiting for calendar to close")

            reason_select = Select(self.client.find_element(By.XPATH, pageObject.first_payment_dropdown))
            reason_select.select_by_index(1)

            reason_select = Select(self.client.find_element(By.XPATH, pageObject.first_payment_profile))
            #get last option since it is most likely to succeed
            options = self.client.find_element(By.XPATH, pageObject.first_payment_profile).find_elements_by_tag_name('option')
            reason_select.select_by_index(len(options)-1)

            use_same_profile_box = self.client.find_element(By.XPATH, pageObject.use_same_profile_box)
            use_same_profile_box_click = ActionChains(self.client).move_to_element(use_same_profile_box).click().perform()

            next_button = self.client.find_element(By.XPATH, pageObject.wizard_activate)
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            final_screen = wait.until(EC.visibility_of_element_located((By.XPATH, pageObject.ad_type_label)))
            next_button = self.client.find_element(By.XPATH, pageObject.wizard_activate)
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            final_screen = wait.until(EC.visibility_of_element_located((By.XPATH, pageObject.invoice_date_label)))
            next_button = self.client.find_element(By.XPATH, pageObject.wizard_activate)
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            final_screen = wait.until(EC.visibility_of_element_located((By.XPATH, pageObject.activation_message_box)))
            next_button = self.client.find_element(By.XPATH, pageObject.finish_button)
            next_button_click = ActionChains(self.client).move_to_element(next_button).click().perform()

            console_logs = self.client.get_log('browser')

    def test_createContractForSPIDsInCSV (self):
        with open('SPIDs.csv', newline='') as csvfile:
            reader = csv.reader(csvfile, delimiter=',', quotechar='|')
            next(reader)
            for row in reader:
                try:
                    self.test_activateMonthlyContract(str(row[0]))
                except: # catch *all* exceptions
                    print('finished attempting contract for '+str(row[0]))