from behave import given, then, when
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper
from reviewFormTests import *
from platform_gateway_steps import *
from reviewFormTests import *
from platform_pages import *
from faker import Faker
import time


@when('a user navigates to the member review form via the header link')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    header_review_button = context.browser.find_element(*MemberHeaderLocators.ADD_REVIEW_BUTTON)
    ActionChains(context.browser).move_to_element(header_review_button).click().perform()
    time.sleep(1.5)

@when('the user searches for a service provider on the add a review page')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    header_review_button = context.browser.find_element(*MemberHeaderLocators.ADD_REVIEW_BUTTON)
    ActionChains(context.browser).move_to_element(header_review_button).click().perform()
    time.sleep(1.5)
