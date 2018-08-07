
class LegacyPageObjects():
    elementCount = 1

    # legacy login objects
    sales_lefthand_nav = '//span[contains(text(),\'Sales\')]'
    logout_link = '//a[@id=\'ctl00_loginPanel_ToolsLoginStatus\']'

    user_box_css = '#ctl00_MainContentPlaceHolder_LogonControl_UserName'
    password_box_css = '#ctl00_MainContentPlaceHolder_LogonControl_Password'
    submit_button_css = '#ctl00_MainContentPlaceHolder_LogonControl_LogOnSubmit'

    # contract item objects
    add_contract_screen = '//div[@id=\'adElement'+str(elementCount)+'\']//textarea[@class=\'CouponTextArea\']'
    add_contract_item_button = '//a[@id=\'addNewTab\']'
    contract_category_selector = '//div[@id=\'adElement'+str(elementCount)+'\']//select[contains(@name, \'categorySelect\')]'
    contract_element_type_selector = '//div[@id=\'adElement'+str(elementCount)+'\']//select[contains(@name, \'adElementTypeSelect\')]'
    contract_ad_element_type_subset = '//select[contains(@name, \'AdElementsSelect\')]'
    contract_offer_text_area = '//div[@id=\'adElement'+str(elementCount)+'\']//textarea[contains(@id,\'CouponText\')]'
    contract_discount_selector = '//div[@id=\'adElement'+str(elementCount)+'\']//select[contains(@name, \'discountTypeSelect\')]'
    contract_discount_textbox = '//div[@id=\'adElement'+str(elementCount)+'\']//input[contains(@name,\'PricingDiscount\')]'
    contract_pricing_list = '//div[@id=\'adElement'+str(elementCount)+'\']//td[contains(@id,\'price-adElement\')]'
    contract_pricing_checkbox = '//div[@id=\'adElement'+str(elementCount)+'\']//input[@class=\'RSC\']'
    contract_monthly_total = '//div[@id=\'adElement'+str(elementCount)+'\']//td[contains(@class,\'TabTotalCardMonthly\')]'
    contract_tab_total_card = '//div[@id=\'adElement'+str(elementCount)+'\']//td[contains(@class,\'TabTotalCardMonthly\')]'

    # contract publishing objects
    contract_management_tab = '//span[contains(text(),\'Contract Management\')]'
    contract_list = '//a[contains(text(),\'Contract List\')]'
    contract_add_link = '//a[@id=\'ctl00_MainContentPlaceHolder_addNewLink\']'
    spid_box = '//input[@id=\'SPID\']'
    contract_title_box = '//textarea[@id=\'ContractTitle\']'
    additional_detail_box = '//textarea[@id=\'OCAAssociateMessage\']'

    publish_box = '//a[@id=\'PublishContract\']'
    business_center_select = '//select[@id=\'ShowInBusinessCenterValues\']'
    submit_publish = '//span[text()=\'Submit\']'

    # contract activation objects
    activate_box = '//a[@id=\'ActivateContract\']'
    wizard_activate = '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Next\')]'
    activation_signature_dropdown = '//div[@id=\'ActivationWizard\']//select[@id=\'activationLicenseSignatureDropDownList\']'
    update_license = '//div[@id=\'ActivationWizard\']//input[@id=\'UpdateLicenseSignature\']'
    waive_validation = '//div[@id=\'ActivationWizard\']//input[@id=\'activationWizardWaiveValidationErrorsCheckbox\']'
    next_page = '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Next\')]'

    payment_terms = '//div[@id=\'ActivationWizard\']//select[@name=\'activationPaymentTermDropDownList\']'
    payment_reason = '//div[@id=\'ActivationWizard\']//select[@name=\'revenueChangeReasonDropDownList\']'
    sales_box = '//div[@id=\'ActivationWizard\']//input[@id=\'salesForceOpportunityIdTextBox\']'
    signed_date_box = '//div[@id=\'ActivationWizard\']//input[@id=\'activationSignedDate\']'
    generic_wizard = '//div[@id=\'ActivationWizard\']'
    cvv_date_box = '//div[@id=\'ActivationWizard\']//input[@id=\'activationCommissionContractValueDate\']'
    first_payment_dropdown = '//div[@id=\'ActivationWizard\']//select[@name=\'firstPaymentTypeDropDownList\']'
    first_payment_profile = '//div[@id=\'ActivationWizard\']//select[@name=\'firstPaymentProfileDropDownList\']'
    use_same_profile_box = '//input[@id=\'chkUseFirstPaymentChoicesForRemainingPayment\']'
    ad_type_label = '//th[contains(text(),\'Ad Type\')]'
    invoice_date_label = '//th[contains(text(),\'Invoice Date\')]'
    activation_message_box = '//div[@id=\'activationMessage\']'
    finish_button = '//div[@id=\'ActivationWizard\']//button[contains(text(),\'Finish\')]'

    defocus_box_css = '#ctl00_MainContentPlaceHolder_WorkFlowStatus'

    def setElementCount(self, counter):
        self.elementCount = counter
    def getElementCount(self):
        return self.elementCount
    def updateElementCount(self):
        self.add_contract_screen = '//div[@id=\'adElement'+str(self.elementCount)+'\']//textarea[@class=\'CouponTextArea\']'
        self.contract_category_selector = '//div[@id=\'adElement'+str(self.elementCount)+'\']//select[contains(@name, \'categorySelect\')]'
        self.contract_element_type_selector = '//div[@id=\'adElement'+str(self.elementCount)+'\']//select[contains(@name, \'adElementTypeSelect\')]'
        self.contract_offer_text_area = '//div[@id=\'adElement'+str(self.elementCount)+'\']//textarea[contains(@id,\'CouponText\')]'
        self.contract_discount_selector = '//div[@id=\'adElement'+str(self.elementCount)+'\']//select[contains(@name, \'discountTypeSelect\')]'
        self.contract_discount_textbox = '//div[@id=\'adElement'+str(self.elementCount)+'\']//input[contains(@name,\'PricingDiscount\')]'
        self.contract_pricing_list = '//div[@id=\'adElement'+str(self.elementCount)+'\']//td[contains(@id,\'price-adElement\')]'
        self.contract_pricing_checkbox = '//div[@id=\'adElement'+str(self.elementCount)+'\']//input[@class=\'RSC\']'
        self.contract_monthly_total = '//div[@id=\'adElement'+str(self.elementCount)+'\']//td[contains(@class,\'TabTotalCardMonthly\')]'
        self.contract_tab_total_card = '//div[@id=\'adElement'+str(self.elementCount)+'\']//td[contains(@class,\'TabTotalCardMonthly\')]'