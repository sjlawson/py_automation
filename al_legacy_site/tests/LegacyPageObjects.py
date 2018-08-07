
class LegacyPageObjects():
    elementCount = 1

    # legacy login objects
    sales_lefthand_nav = '//span[text()=\'Sales\']'
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

    def setElementCount(counter):
        elementCount = counter
    def getElementCount():
        return elementCount