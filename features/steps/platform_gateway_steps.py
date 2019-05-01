from behave import given, then, when
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper
from faker import Faker
from uszipcode import SearchEngine
import time

@given('user is logged into the member site')
def step_impl(context):
    context.browser.delete_all_cookies()
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url'] + '/member/login'
    context.browser.get(appsuite_url)
    username_box = context.browser.find_element(By.ID, 'login--login-email')
    ActionChains(context.browser).move_to_element(username_box).click().send_keys(context.appsuites[appsuite_env]['test_username']).perform()
    password_box = context.browser.find_element(By.ID, 'login--login-password')
    ActionChains(context.browser).move_to_element(password_box).click().send_keys(context.appsuites[appsuite_env]['test_password']).perform()
    submit_button = context.browser.find_element(By.ID, 'login--login-button')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()
    context.wait = WebDriverWait(context.browser, 20)
    context.wait.until(EC.presence_of_element_located((By.ID, 'header-add-review')))

@given('user is on the sign up page')
def step_impl(context):
    context.browser.delete_all_cookies()
    appsuite_env = 'al_member_site'
    signup_url = context.appsuites[appsuite_env]['base_url'] + '/app/signup'
    context.browser.get(signup_url)
    context.wait = WebDriverWait(context.browser, 20)
    context.wait.until(EC.url_to_be(context.appsuites[appsuite_env]['base_url'] + '/app/signup'))

@given('user is on the member login page')
def step_impl(context):
    context.browser.delete_all_cookies()
    appsuite_env = 'al_member_site'
    login_url = context.appsuites[appsuite_env]['base_url'] + '/member/login'
    context.browser.get(login_url)
    context.wait = WebDriverWait(context.browser, 20)
    context.wait.until(EC.url_to_be(context.appsuites[appsuite_env]['base_url'] + '/member/login'))

@when('the user creates a new account')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    username_box = context.browser.find_element(By.ID, 'signup--signup-email')
    ActionChains(context.browser).move_to_element(username_box).click().send_keys(data_generator.email()).perform()
    password_box = context.browser.find_element(By.ID, 'signup--signup-password')
    ActionChains(context.browser).move_to_element(password_box).click().send_keys('testtest1234').perform()
    membership_checkbox = context.browser.find_element(By.ID, 'signup--signup-membership-agreement')
    ActionChains(context.browser).move_to_element(membership_checkbox).click().perform()
    submit_button = context.browser.find_element(By.ID, 'signup--signup-continue')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()

    agreement_present = context.browser.find_elements(By.ID, 'legal--accept')
    if len(agreement_present) > 0:
        agree_button = context.browser.find_element(By.ID, 'legal--accept')
        ActionChains(context.browser).move_to_element(agree_button).click().perform()
        context.wait.until(EC.presence_of_element_located((By.ID, 'address-collection--first-name')))
    else:
        context.wait.until(EC.presence_of_element_located((By.ID, 'address-collection--first-name')))

@when('the user enters geographic data')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    firstname_box = context.browser.find_element(By.ID, 'address-collection--first-name')
    ActionChains(context.browser).move_to_element(firstname_box).click().send_keys(data_generator.first_name()).perform()
    password_box = context.browser.find_element(By.ID, 'address-collection--last-name')
    ActionChains(context.browser).move_to_element(password_box).click().send_keys(data_generator.last_name()).perform()
    address_box1 = context.browser.find_element(By.ID, 'address-component--first-line')
    ActionChains(context.browser).move_to_element(address_box1).click().send_keys(data_generator.street_address()).perform()
    if (current_time % 2):
        address_box2 = context.browser.find_element(By.ID, 'address-component--second-line')
        ActionChains(context.browser).move_to_element(address_box2).click().send_keys(data_generator.secondary_address()).perform()
    city_box = context.browser.find_element(By.ID, 'address-component--city')
    ActionChains(context.browser).move_to_element(city_box).click().send_keys(data_generator.city()).perform()
    state_selector = Select(context.browser.find_element(By.ID, 'address-component--state'))
    random_state = data_generator.state_abbr(False)
    state_selector.select_by_value(random_state)
    geography_search = SearchEngine(simple_zipcode=True)
    random_zip = geography_search.by_state(random_state)
    random_zip_string = random_zip[0].values()[0]
    zip_box = context.browser.find_element(By.ID, 'address-component--zip-code')
    ActionChains(context.browser).move_to_element(zip_box).click().send_keys(random_zip_string).perform()
    submit_button = context.browser.find_element(By.ID, 'address-collection--submit-button')
    ActionChains(context.browser).move_to_element(submit_button).click().perform()
    context.wait.until(EC.presence_of_element_located((By.ID, 'header-add-review')))

@when('the user sends "{message_count:d}" messages')
def step_impl(context, message_count):
    search_hover = context.browser.find_element(By.ID, 'sub-nav-tab-header-house')
    ActionChains(context.browser).move_to_element(search_hover).perform()
    search_plumbing = context.browser.find_element(By.ID, 'header--sub-nav-plumbing')
    ActionChains(context.browser).move_to_element(search_plumbing).click().perform()
    context.wait.until(EC.visibility_of_element_located((By.ID, 'searchTerm')))
    search_click_modal = context.browser.find_element(By.ID, 'searchTerm')
    ActionChains(context.browser).move_to_element(search_click_modal).click().perform()
    context.wait.until(EC.presence_of_element_located((By.XPATH, "//ul[@id='spsearch--results-list']//li[1]//a[contains(@id,'spsearch--result-')]")))
    top_result = context.browser.find_element(By.XPATH, "//ul[@id='spsearch--results-list']//li[1]//a[contains(@id,'spsearch--result-')]")
    ActionChains(context.browser).move_to_element(top_result).click().perform()
    context.wait.until(EC.visibility_of_element_located((By.ID, 'message-pro-button')))
    message_pro = context.browser.find_element(By.ID, 'message-pro-button')
    ActionChains(context.browser).move_to_element(message_pro).click().perform()
    context.wait.until(EC.visibility_of_element_located((By.CLASS_NAME, 'modal-title')))
    ActionChains(context.browser).send_keys('first message').perform()
    context.browser.execute_script("document.getElementById('send-message-button').click();")
    context.wait.until(EC.invisibility_of_element_located((By.ID, 'send-message-button')))
    time.sleep(3)
    view_messages_button = context.browser.find_element(By.ID, 'main-menu--view-messages-icon')
    ActionChains(context.browser).move_to_element(view_messages_button).click().perform()

    context.wait.until(EC.visibility_of_element_located((By.ID, 'interactor-name-link')))
    message_count = int(message_count)
    for counter in range(message_count):
        message_area = context.browser.find_element(By.ID, 'message-compose-field')
        ActionChains(context.browser).move_to_element(message_area).click().send_keys('test message: ' + str(counter)).perform()
        send_button = context.browser.find_element(By.ID, 'send-message-button')
        ActionChains(context.browser).move_to_element(send_button).click().perform()
        time.sleep(1)

@when('the user views "{number_views:d}" profiles')
def step_impl(context, number_views):
    search_toplevel = ['house', 'yard', 'health']
    profiles_viewed = 0
    for search_parent_category in search_toplevel:
        top_level_locator = 'sub-nav-tab-header-' + str(search_parent_category)
        search_hover = context.browser.find_element(By.ID, top_level_locator)
        ActionChains(context.browser).move_to_element(search_hover).perform()
        search_child_categories = context.browser.find_elements(By.XPATH, "//div[@id='{}']//a[contains(@id, 'header--sub-nav')]".format(top_level_locator))
        print('sub-nav-tab-header-' + str(search_parent_category))
        child_list = []
        for child_category_result in search_child_categories:
            child_list.append(child_category_result.get_attribute('id'))
        for this_category_id in child_list:
            print(this_category_id)
            search_hover = context.browser.find_element(By.ID, top_level_locator)
            ActionChains(context.browser).move_to_element(search_hover).perform()
            context.wait.until(EC.visibility_of_element_located((By.ID, this_category_id)))
            category_element = context.browser.find_element(By.ID, this_category_id)
            ActionChains(context.browser).click(category_element).perform()
            context.wait.until(EC.visibility_of_element_located((By.ID, 'searchTerm')))
            search_click_modal = context.browser.find_element(By.ID, 'searchTerm')
            ActionChains(context.browser).move_to_element(search_click_modal).click().perform()
            context.wait.until(EC.presence_of_element_located((By.XPATH, "//ul[@id='spsearch--results-list']")))
            pagination_list = context.browser.find_elements(By.XPATH, "//a[contains(@id,'spsearch--panel-pagination-page')]")
            max_pages = 1
            if len(pagination_list) > 1:
                last_page_element = pagination_list[-2]
                max_pages = int(last_page_element.text)
            search_url = context.browser.current_url
            for pagination_loop in range(max_pages):
                context.browser.get(search_url + '&page=' + str(pagination_loop))
                context.wait.until(EC.presence_of_element_located((By.XPATH, "//ul[@id='spsearch--results-list']")))
                page_results = context.browser.find_elements(By.XPATH, "//a[contains(@id,'spsearch--result-')]")
                profile_urls = []
                for sp_result in page_results:
                    profile_urls.append(sp_result.get_attribute('href'))
                for this_url in profile_urls:
                    if (profiles_viewed >= number_views):
                        return
                    context.browser.get(this_url)
                    context.wait.until(EC.visibility_of_element_located((By.ID, 'category-info')))
                    profiles_viewed += 1

@when('the user creates "{number_leads:d}" leads')
def step_impl(context, number_leads):
    leads_created = 0
    deals_button = context.browser.find_element(By.ID, 'right-subnav--shop-offers')
    ActionChains(context.browser).move_to_element(deals_button).click().perform()
    context.wait.until(EC.visibility_of_element_located((By.LINK_TEXT, 'Shop All Deals')))
    pages_list = context.browser.find_elements(By.XPATH, "//a[contains(@id, 'pagination-page-45')]")
    max_pages = 1
    if len(pages_list) > 1:
        last_page_element = pages_list[-2]
        max_pages = int(last_page_element.text)
    search_url = context.browser.current_url
    for pagination_loop in range(max_pages):
        context.browser.get(search_url + '?page=' + str(pagination_loop))
        context.wait.until(EC.presence_of_element_located((By.CLASS_NAME, 'popular-offers-container')))
        page_deals_list = context.browser.find_elements(By.XPATH, "//a[contains(@id, 'enhanced-offer-card-')]")
        deals_to_claim = []
        for deal in page_deals_list:
            deals_to_claim.append(deal.get_attribute('href'))
        for this_url in deals_to_claim:
            if (leads_created >= number_leads):
                return
            print(this_url)
            context.browser.get(this_url)
            context.wait.until(EC.visibility_of_element_located((By.XPATH, "//button[text()='Claim This Deal']")))
            claim_button = context.browser.find_element(By.XPATH, "//button[text()='Claim This Deal']")
            ActionChains(context.browser).move_to_element(claim_button).click().perform()
            context.wait.until(EC.presence_of_element_located((By.NAME, 'projectDetails')))
            project_textarea = context.browser.find_element(By.NAME, 'projectDetails')
            ActionChains(context.browser).move_to_element(project_textarea).click().send_keys('I really need a new thing done to my house.  Help me obiwan, you\'re my only hope').perform()
            context.wait.until(EC.presence_of_element_located((By.ID, 'offer-redemption-next-1')))
            next_first = context.browser.find_element(By.ID, 'offer-redemption-next-1')
            ActionChains(context.browser).move_to_element(next_first).click().perform()
            context.wait.until(EC.visibility_of_element_located((By.CLASS_NAME, 'field-radio-label')))
            time_box = context.browser.find_element(By.XPATH, "//label[@for='timing-control-ImFlexible']")
            ActionChains(context.browser).move_to_element(time_box).click().perform()
            context.wait.until(EC.visibility_of_element_located((By.ID, 'offer-redemption-next-2')))
            next_second = context.browser.find_element(By.ID, 'offer-redemption-next-2')
            ActionChains(context.browser).move_to_element(next_second).click().perform()
            context.wait.until(EC.visibility_of_element_located((By.CLASS_NAME, 'control-label')))
            phone_1 = context.browser.find_element(By.NAME, 'part1')
            ActionChains(context.browser).move_to_element(phone_1).click().send_keys('544').perform()
            phone_2 = context.browser.find_element(By.NAME, 'part2')
            ActionChains(context.browser).move_to_element(phone_2).click().send_keys('701').perform()
            phone_3 = context.browser.find_element(By.NAME, 'part3')
            ActionChains(context.browser).move_to_element(phone_3).click().send_keys('3334').perform()
            final_button = context.browser.find_element(By.ID, 'offer-redemption-next-3')
            ActionChains(context.browser).move_to_element(final_button).click().perform()
            context.wait.until(EC.visibility_of_element_located((By.ID, 'offer-redemption-see-offers')))
            leads_created += 1

@then('the member landing page is loaded')
def step_impl(context):
    context.wait.until(EC.presence_of_element_located((By.CLASS_NAME, 'search-panel_welcome-msg')))
    welcome_message = context.browser.find_element(By.CLASS_NAME, 'search-panel_welcome-msg')
    assert bool(welcome_message)

@then('they are logged out')
def step_impl(context):
    context.wait.until(EC.presence_of_element_located((By.ID, 'login--header-text-signin')))
    sign_in = context.browser.find_element(By.ID, 'login--header-text-signin')
    assert bool(sign_in)
  
@then('the user receives a recaptcha challenge')
def step_impl(context):
    #todo when implemented
    temp = 1