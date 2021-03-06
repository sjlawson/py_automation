from behave import given, then, when
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper
from reviewFormTests import *
from faker import Faker
import time

@when('the user fills out a review form and joins')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    overall_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.OVERALL_B_GRADE)
    ActionChains(context.browser).move_to_element(overall_A_bubble).click().perform()
    price_C_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PRICE_C_GRADE)
    ActionChains(context.browser).move_to_element(price_C_bubble).click().perform()
    quality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.QUALITY_A_GRADE)
    ActionChains(context.browser).move_to_element(quality_A_bubble).click().perform()
    responsiveness_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.RESPONSIVENESS_A_GRADE)
    ActionChains(context.browser).move_to_element(responsiveness_A_bubble).click().perform()
    punctuality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PUNCTUALITY_A_GRADE)
    ActionChains(context.browser).move_to_element(punctuality_A_bubble).click().perform()
    professional_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PROFESSIONALISM_A_GRADE)
    ActionChains(context.browser).move_to_element(professional_A_bubble).click().perform()
    work_completed_yes = context.browser.find_element(*ReviewButtons.WORK_COMPLETED_YES)
    ActionChains(context.browser).move_to_element(work_completed_yes).click().perform()
    will_hire_yes = context.browser.find_element(*ReviewButtons.WILL_HIRE_AGAIN_YES)
    ActionChains(context.browser).move_to_element(will_hire_yes).click().perform()
    description_of_work = context.browser.find_element(*ReviewInputFields.DESCRIPTION_OF_WORK)
    ActionChains(context.browser).move_to_element(description_of_work).click().send_keys('New User Automated Test Automated Test').perform()
    how_did_it_go = context.browser.find_element(*ReviewInputFields.HOW_DID_IT_GO)
    ActionChains(context.browser).move_to_element(how_did_it_go).click().send_keys('New User Automated Test I really need a new thing done to my house. my only hope Automated Test').perform()
    submit_button_review = context.browser.find_element(*ReviewButtons.REVIEW_SUBMIT_BUTTON)
    ActionChains(context.browser).move_to_element(submit_button_review).click().perform()
    time.sleep(1)
    join_button = context.browser.find_element(*ReviewButtons.SIGN_UP_TOGGLE)
    ActionChains(context.browser).move_to_element(join_button).click().perform()
    email_field = context.browser.find_element(*ReviewInputFields.SIGN_UP_FORM_EMAIL)
    ActionChains(context.browser).move_to_element(email_field).click().send_keys(data_generator.email()).perform()
    first_name = context.browser.find_element(*ReviewInputFields.SIGN_UP_FIRST_NAME)
    ActionChains(context.browser).move_to_element(first_name).click().send_keys(data_generator.first_name()).perform()
    last_name = context.browser.find_element(*ReviewInputFields.SIGN_UP_LAST_NAME)
    ActionChains(context.browser).move_to_element(last_name).click().send_keys(data_generator.last_name()).perform()
    password_field = context.browser.find_element(*ReviewInputFields.SIGN_UP_PASSWORD)
    ActionChains(context.browser).move_to_element(password_field).click().send_keys('qwerty1234').perform()
    first_line = context.browser.find_element(*ReviewInputFields.ADDRESS_FIRST_LINE)
    ActionChains(context.browser).move_to_element(first_line).click().send_keys(data_generator.street_address()).perform()
    second_line = context.browser.find_element(*ReviewInputFields.ADDRESS_SECOND_LINE)
    ActionChains(context.browser).move_to_element(second_line).click().send_keys(data_generator.street_address()).perform()
    city_button = context.browser.find_element(*ReviewInputFields.ADDRESS_CITY)
    ActionChains(context.browser).move_to_element(city_button).click().send_keys(data_generator.city()).perform()
    state_button = context.browser.find_element(*ReviewInputFields.ADDRESS_STATE)
    ActionChains(context.browser).move_to_element(state_button).click().send_keys('MI').perform()
    zip_button = context.browser.find_element(*ReviewInputFields.ADDRESS_ZIP)
    ActionChains(context.browser).move_to_element(zip_button).click().send_keys('49726').perform()
    agreement_button = context.browser.find_element(*ReviewButtons.USER_AGREEMENT_BUTTON)
    ActionChains(context.browser).move_to_element(agreement_button).click().perform()
    time.sleep(1)
    finish_button = context.browser.find_element(*ReviewButtons.SIGN_UP_FORM_SUBMIT)
    ActionChains(context.browser).move_to_element(finish_button).click().perform()
    time.sleep(10)


@when('the user fills out a review form as an existing user')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    overall_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.OVERALL_A_GRADE)
    ActionChains(context.browser).move_to_element(overall_A_bubble).click().perform()
    price_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PRICE_A_GRADE)
    ActionChains(context.browser).move_to_element(price_A_bubble).click().perform()
    quality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.QUALITY_A_GRADE)
    ActionChains(context.browser).move_to_element(quality_A_bubble).click().perform()
    responsiveness_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.RESPONSIVENESS_A_GRADE)
    ActionChains(context.browser).move_to_element(responsiveness_A_bubble).click().perform()
    punctuality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PUNCTUALITY_A_GRADE)
    ActionChains(context.browser).move_to_element(punctuality_A_bubble).click().perform()
    professional_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PROFESSIONALISM_A_GRADE)
    ActionChains(context.browser).move_to_element(professional_A_bubble).click().perform()
    work_completed_yes = context.browser.find_element(*ReviewButtons.WORK_COMPLETED_YES)
    ActionChains(context.browser).move_to_element(work_completed_yes).click().perform()
    will_hire_yes = context.browser.find_element(*ReviewButtons.WILL_HIRE_AGAIN_YES)
    ActionChains(context.browser).move_to_element(will_hire_yes).click().perform()
    description_of_work = context.browser.find_element(*ReviewInputFields.DESCRIPTION_OF_WORK)
    ActionChains(context.browser).move_to_element(description_of_work).click().send_keys('existing User Automated Test Automated Test').perform()
    how_did_it_go = context.browser.find_element(*ReviewInputFields.HOW_DID_IT_GO)
    ActionChains(context.browser).move_to_element(how_did_it_go).click().send_keys('existing User Automated Test I really need a new thing done to my house. my only hope Automated Test').perform()
    submit_button_review = context.browser.find_element(*ReviewButtons.REVIEW_SUBMIT_BUTTON)
    ActionChains(context.browser).move_to_element(submit_button_review).click().perform()
    time.sleep(1)
    sign_in_toggle = context.browser.find_element(*ReviewButtons.SIGN_IN_TOGGLE)
    ActionChains(context.browser).move_to_element(sign_in_toggle).click().perform()
    time.sleep(1)
    sign_in_email = context.browser.find_element(*ReviewInputFields.SIGN_IN_EMAIL)
    ActionChains(context.browser).move_to_element(sign_in_email).click().send_keys('test2-member@angieslist.com').perform()
    sign_in_pasword = context.browser.find_element(*ReviewInputFields.SIGN_IN_PASSWORD)
    ActionChains(context.browser).move_to_element(sign_in_pasword).click().send_keys('qwerty1234!').perform()
    sign_in_form_submit = context.browser.find_element(*ReviewButtons.SIGN_IN_FORM_SUBMIT)
    ActionChains(context.browser).move_to_element(sign_in_form_submit).click().perform()
    time.sleep(10)


@when('the user fills out a medical review form as an existing user')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    overall_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.OVERALL_A_GRADE)
    ActionChains(context.browser).move_to_element(overall_A_bubble).click().perform()
    price_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.AVAILABILITY_B_GRADE)
    ActionChains(context.browser).move_to_element(price_A_bubble).click().perform()
    quality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.OFFICE_ENVIRONMENT_B_GRADE)
    ActionChains(context.browser).move_to_element(quality_A_bubble).click().perform()
    responsiveness_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.STAFF_FRIENDLINESS_A_GRADE)
    ActionChains(context.browser).move_to_element(responsiveness_A_bubble).click().perform()
    punctuality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PUNCTUALITY_A_GRADE)
    ActionChains(context.browser).move_to_element(punctuality_A_bubble).click().perform()
    professional_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.BEDSIDE_MANNER_A_GRADE)
    ActionChains(context.browser).move_to_element(professional_A_bubble).click().perform()
    professional_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.COMMUNICATION_B_GRADE)
    ActionChains(context.browser).move_to_element(professional_A_bubble).click().perform()
    professional_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.EFFECTIVENESS_OF_TREATMENT_C_GRADE)
    ActionChains(context.browser).move_to_element(professional_A_bubble).click().perform()
    professional_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.BILLING_AND_ADMIN_C_GRADE)
    ActionChains(context.browser).move_to_element(professional_A_bubble).click().perform()
    work_completed_yes = context.browser.find_element(*ReviewButtons.WORK_COMPLETED_YES)
    ActionChains(context.browser).move_to_element(work_completed_yes).click().perform()
    will_hire_yes = context.browser.find_element(*ReviewButtons.WILL_HIRE_AGAIN_YES)
    ActionChains(context.browser).move_to_element(will_hire_yes).click().perform()
    description_of_work = context.browser.find_element(*ReviewInputFields.DESCRIPTION_OF_WORK)
    ActionChains(context.browser).move_to_element(description_of_work).click().send_keys('Existing User Automated Test Medical Test').perform()
    how_did_it_go = context.browser.find_element(*ReviewInputFields.HOW_DID_IT_GO)
    ActionChains(context.browser).move_to_element(how_did_it_go).click().send_keys('Existing User Automated Medical Test Automated Test').perform()
    submit_button_review = context.browser.find_element(*ReviewButtons.REVIEW_SUBMIT_BUTTON)
    ActionChains(context.browser).move_to_element(submit_button_review).click().perform()
    time.sleep(2)
    sign_in_toggle = context.browser.find_element(*ReviewButtons.SIGN_IN_TOGGLE)
    ActionChains(context.browser).move_to_element(sign_in_toggle).click().perform()
    time.sleep(2)
    sign_in_email = context.browser.find_element(*ReviewInputFields.SIGN_IN_EMAIL)
    ActionChains(context.browser).move_to_element(sign_in_email).click().send_keys('test2-member@angieslist.com').perform()
    sign_in_pasword = context.browser.find_element(*ReviewInputFields.SIGN_IN_PASSWORD)
    ActionChains(context.browser).move_to_element(sign_in_pasword).click().send_keys('qwerty1234!').perform()
    time.sleep(1)
    SIGN_IN_FORM_SUBMIT = context.browser.find_element(*ReviewButtons.SIGN_IN_FORM_SUBMIT)
    ActionChains(context.browser).move_to_element(SIGN_IN_FORM_SUBMIT).click().perform()
    time.sleep(10)


@when('the user fills out a review form as an existing user but stops at clikcing sign in toggle')
def step_impl(context):
    data_generator = Faker()
    current_time = int(time.time() * 10000)
    data_generator.random.seed(current_time)
    overall_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.OVERALL_A_GRADE)
    ActionChains(context.browser).move_to_element(overall_A_bubble).click().perform()
    price_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PRICE_A_GRADE)
    ActionChains(context.browser).move_to_element(price_A_bubble).click().perform()
    quality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.QUALITY_A_GRADE)
    ActionChains(context.browser).move_to_element(quality_A_bubble).click().perform()
    responsiveness_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.RESPONSIVENESS_A_GRADE)
    ActionChains(context.browser).move_to_element(responsiveness_A_bubble).click().perform()
    punctuality_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PUNCTUALITY_A_GRADE)
    ActionChains(context.browser).move_to_element(punctuality_A_bubble).click().perform()
    professional_A_bubble = context.browser.find_element(*ReviewLetterGradeSelectors.PROFESSIONALISM_A_GRADE)
    ActionChains(context.browser).move_to_element(professional_A_bubble).click().perform()
    work_completed_yes = context.browser.find_element(*ReviewButtons.WORK_COMPLETED_YES)
    ActionChains(context.browser).move_to_element(work_completed_yes).click().perform()
    will_hire_yes = context.browser.find_element(*ReviewButtons.WILL_HIRE_AGAIN_YES)
    ActionChains(context.browser).move_to_element(will_hire_yes).click().perform()
    description_of_work = context.browser.find_element(*ReviewInputFields.DESCRIPTION_OF_WORK)
    ActionChains(context.browser).move_to_element(description_of_work).click().send_keys('existing User Automated Test Automated Test').perform()
    how_did_it_go = context.browser.find_element(*ReviewInputFields.HOW_DID_IT_GO)
    ActionChains(context.browser).move_to_element(how_did_it_go).click().send_keys('existing User Automated Test I really').perform()
    submit_button_review = context.browser.find_element(*ReviewButtons.REVIEW_SUBMIT_BUTTON)
    ActionChains(context.browser).move_to_element(submit_button_review).click().perform()
    time.sleep(1)
    sign_in_toggle = context.browser.find_element(*ReviewButtons.SIGN_IN_TOGGLE)
    ActionChains(context.browser).move_to_element(sign_in_toggle).click().perform()
    time.sleep(1)
