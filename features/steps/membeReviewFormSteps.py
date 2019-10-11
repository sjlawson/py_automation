from behave import given, then, when
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper
from reviewFormTests import *
from platform_gateway_steps import *
from reviewFormTests import *
from member_pages import *
from faker import Faker
import time


@when('a user navigates to the member review form via the header link')
def step_impl(context):
    header_review_button = context.browser.find_element(*MemberHeaderLocators.ADD_REVIEW_BUTTON)
    ActionChains(context.browser).move_to_element(header_review_button).click().perform()
    time.sleep(1.5)

@when('the user searches for a service provider on the add a review page')
def step_impl(context):
    data_generator = Faker()
    reviews_sp_search = context.browser.find_element(*MemberAddReviewPageLocators.REVIEWS_SEARCH_FOR_PROVIDER)
    ActionChains(context.browser).move_to_element(reviews_sp_search).click().send_keys('Test').perform()
    time.sleep(1.5)
    reviews_select_sp_autocomplete = context.browser.find_element(*MemberAddReviewPageLocators.REVIEWS_SP_AUTOCOMPLETE_THIRD_OPTION)
    ActionChains(context.browser).move_to_element(reviews_select_sp_autocomplete).click().perform()
    time.sleep(3.5)

