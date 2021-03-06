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
    context.url = appsuite_url + '/app/lead/survey/sr/still_deciding?entry_point_id=34138796&postalCode=46143&taskName=Drain-Line-Breakage-Camera-Locate.2102383.3'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR Working With Pro page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/working_with_pro?entry_point_id=34138795&postalCode=46143&taskName=Drain-Line-Breakage-Camera-Locate.2102383.3'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR No Contact page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/no_contact?entry_point_id=34138797&postalCode=46143&taskName=Drain-Line-Breakage-Camera-Locate.2102383.3'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site SR No Longer Doing page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/app/lead/survey/sr/no_longer_doing?entry_point_id=34138798&postalCode=46143&taskName=Drain-Line-Breakage-Camera-Locate.2102383.3'
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a certain member site page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + context.text
    context.browser.get(context.url)
    time.sleep(1.5)


@given('a user is on a member site unauthenticated deals search page')
def step_impl(context):
    appsuite_env = 'al_member_site'
    appsuite_url = context.appsuites[appsuite_env]['base_url']
    context.url = appsuite_url + '/deals/search'
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
        time.sleep(4)
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

@when ('deals have loaded on the member homepage')
def step_impl(context):
    context.wait.until(EC.presence_of_element_located(MemberBodyLocators.DEAL_CARD))

@when ('the user is able to click on an offer')
def step_impl (context):
    member_home_offer_click = context.browser.find_element(*MemberBodyLocators.DEAL_CARD)
    ActionChains(context.browser).move_to_element(member_home_offer_click).click().perform()

@when ('a user enters their postal code to see offers')
def step_impl (context):
    member_unauth_postalcode_enter = context.browser.find_element(*MemberModalLocators.DEAL_UNAUTH_POSTALCODE_MODAL_SET_CODE)
    ActionChains(context.browser).move_to_element(member_unauth_postalcode_enter).click().send_keys(('49726'), Keys.ENTER).perform()

@then ('the deal detail page loads')
def step_impl(context):
    context.wait.until(EC.presence_of_element_located(MemberBodyLocators.CONTACT_PRO_CTA))
    context.wait.until(EC.presence_of_element_located(MemberBodyLocators.MEMBER_DEAL_DETAIL_OFFER_GRADE))
    context.wait.until(EC.presence_of_element_located(MemberBodyLocators.MEMBER_DEAL_DETAIL_RECENT_REVIEWS))

@then ('the user selects a deal from the unauth experience')
def step_impl(context):
    unauth_deals_search_offer_click = context.browser.find_element(*MemberBodyLocators.DEAL_CARD)
    ActionChains(context.browser).move_to_element(unauth_deals_search_offer_click).click().perform()
    time.sleep(2)
    unauth_deals_contact_pro_cta = context.browser.find_element(*MemberBodyLocators.CONTACT_PRO_CTA)
    ActionChains(context.browser).move_to_element(unauth_deals_contact_pro_cta).click().perform()
    time.sleep(2)