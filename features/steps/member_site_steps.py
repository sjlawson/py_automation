from behave import given, then, when
from common.SegmentTestHelper import SegmentTestHelper
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from common.SegmentTestHelper import SegmentTestHelper
from reviewFormTests import *
from platform_gateway_steps import *
from member_pages import *
from faker import Faker
import time, os



if 'BASEURL_OVERRIDE' in os.environ and os.environ['BASEURL_OVERRIDE']:
            # context.appsuites['al_visitor_site']['base_url'] = os.environ['BASEURL_OVERRIDE']
            visitor_baseurl = os.environ['BASEURL_OVERRIDE']


@given('a user is on a member site visitor review page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR Still Deciding page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/still_deciding?entry_point_id=34138796'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR Working With Pro page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/working_with_pro?entry_point_id=34138795'
    context.browser.get(context.url)
    time.sleep(2)


@given('a user is on a member site SR No Contact page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/no_contact?entry_point_id=34138797'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR No Longer Doing page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/no_longer_doing?entry_point_id=34138798'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a certain member site page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1.5)


@when('a user navigates to the member pricing guide via the header link')
def step_impl(context):
    header_pricing_guide_button = context.browser.find_element(*MemberHeaderLocators.PRICING_GUIDE)
    ActionChains(context.browser).move_to_element(header_pricing_guide_button).click().perform()
    time.sleep(1)


@when ('a user selects a valid category and task')
def step_impl(context):
    pricing_guide_category_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKACACTEGORY)
    ActionChains(context.browser).move_to_element(pricing_guide_category_picked).click().send_keys(('Plumbing'), Keys.ENTER).perform()
    time.sleep(1)
    pricing_guide_task_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKATASK)
    ActionChains(context.browser).move_to_element(pricing_guide_task_picked).click().send_keys(('Install a Bathtub'), Keys.ENTER).perform()
    time.sleep(1)


@when ('a user selects a valid category and task that has NO Service Providers')
def step_impl(context):
    pricing_guide_category_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKACACTEGORY)
    ActionChains(context.browser).move_to_element(pricing_guide_category_picked).click().send_keys(('Architects & Engineers'), Keys.ENTER).perform()
    time.sleep(1)
    pricing_guide_task_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKATASK)
    ActionChains(context.browser).move_to_element(pricing_guide_task_picked).click().send_keys(('Hire a Structural Engineer'), Keys.ENTER).perform()
    time.sleep(1)
    pricing_guide_no_providers = context.browser.find_element(*MemberPricingGuideLocators.SEARCHFORPROSCTA)
    ActionChains(context.browser).move_to_element(pricing_guide_no_providers).click().perform()
    time.sleep(1)


@when ('a user selects a valid category')
def step_impl(context):
    pricing_guide_category_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKACACTEGORY)
    ActionChains(context.browser).move_to_element(pricing_guide_category_picked).click().send_keys(('Plumbing'), Keys.ENTER).perform()
    time.sleep(1)


@when ('a user selects a valid category and task and selects a service provider')
def step_impl(context):
    pricing_guide_category_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKACACTEGORY)
    ActionChains(context.browser).move_to_element(pricing_guide_category_picked).click().send_keys(('Plumbing'), Keys.ENTER).perform()
    time.sleep(1)
    pricing_guide_task_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKATASK)
    ActionChains(context.browser).move_to_element(pricing_guide_task_picked).click().send_keys(('Install a Bathtub'), Keys.ENTER).perform()
    time.sleep(1)

    pricing_guide_graph_presence = context.browser.find_elements(*MemberPricingGuideLocators.PRICINGGUIDEPRESENCE)
    if len(pricing_guide_graph_presence) > 0:
        sp_button = context.browser.find_element(*MemberPricingGuideLocators.SERVICEPROVIDERLINK)
        ActionChains(context.browser).move_to_element(sp_button).click().perform()
        time.sleep(2)
    else:
        context.wait.until(EC.presence_of_element_located(MemberPricingGuideLocators.PRICINGGUIDESEARCHFORPROS))


@when ('a user selects a valid category and task and selects RAQ')
def step_impl(context):
    pricing_guide_category_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKACACTEGORY)
    ActionChains(context.browser).move_to_element(pricing_guide_category_picked).click().send_keys(('Plumbing'), Keys.ENTER).perform()
    time.sleep(1)
    pricing_guide_task_picked = context.browser.find_element(*MemberPricingGuideLocators.PICKATASK)
    ActionChains(context.browser).move_to_element(pricing_guide_task_picked).click().send_keys(('Install a Bathtub'), Keys.ENTER).perform()
    time.sleep(1)

    pricing_guide_graph_presence = context.browser.find_elements(*MemberPricingGuideLocators.PRICINGGUIDEPRESENCE)
    if len(pricing_guide_graph_presence) > 0:
        raq_button = context.browser.find_element(*MemberPricingGuideLocators.PRICINGGUIDERAQCTA)
        ActionChains(context.browser).move_to_element(raq_button).click().perform()
        time.sleep(2)
    else:
        context.wait.until(EC.presence_of_element_located(MemberPricingGuideLocators.PRICINGGUIDESEARCHFORPROS))

