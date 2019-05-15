from selenium.webdriver.common.by import By

class MemberLandingPageLocators(object):
  """A class locators on https://tampa-<env>.plat.angieslist.com/member/login"""
  LOGIN_EMAIL = (By.ID, 'login--login-email')
  LOGIN_PASSWORD = (By.ID, 'login--login-password')
  LOGIN_BUTTON = (By.ID, 'login--login-button')
  LOGIN_TEXT_LABEL = (By.ID, 'login--header-text-signin')

class MemberHeaderLocators(object):
  ADD_REVIEW_BUTTON = (By.ID, 'header-add-review')
  HOUSE_SEARCH_TAB = (By.ID, 'sub-nav-tab-header-house')
  PLUMBING_SEARCH_LINK = (By.ID, 'header--sub-nav-plumbing')
  MESSAGES_BUTTON = (By.ID, 'main-menu--view-messages-icon')
  DEALS_BUTTON = (By.ID, 'right-subnav--shop-offers')

class MemberHomePageLocators(object):
  WELCOME_MESSAGE = (By.CLASS_NAME, 'search-panel_welcome-msg')

class MemberSignUpPageLocators(object):
  SIGNUP_EMAIL = (By.ID, 'signup--signup-email')
  SIGNUP_PASSWORD = (By.ID, 'signup--signup-password')
  SIGNUP_AGREEMENT = (By.ID, 'signup--signup-membership-agreement')
  SIGNUP_CONTINUE = (By.ID, 'signup--signup-continue')
  AGREEMENT_ACCEPT = (By.ID, 'legal--accept')

class MemberSignUpAddressLocators(object):
  ADDRESS_FIRST_NAME = (By.ID, 'address-collection--first-name')
  ADDRESS_LAST_NAME = (By.ID, 'address-collection--last-name')
  ADDRESS_FIRST_LINE = (By.ID, 'address-component--first-line')
  ADDRESS_SECOND_LINE = (By.ID, 'address-component--second-line')
  ADDRESS_CITY = (By.ID, 'address-component--city')
  ADDRESS_STATE = (By.ID, 'address-component--state')
  ADDRESS_ZIP = (By.ID, 'address-component--zip-code')
  ADDRESS_SUBMIT = (By.ID, 'address-collection--submit-button')

class MemberSearchModalLocators(object):
  DEFAULT_SEARCH_TERM = (By.ID, 'searchTerm')

class MemberSearchPageLocators(object):
  TOP_SEARCH_RESULT = (By.XPATH, "//ul[@id='spsearch--results-list']//li[1]//a[contains(@id,'spsearch--result-')]")
  SEARCH_PAGINATION = (By.XPATH, "//a[contains(@id,'spsearch--panel-pagination-page')]")
  INDIVIDUAL_RESULT_LINK = (By.XPATH, "//a[contains(@id,'spsearch--result-')]")

class MemberServiceProviderProfilePageLocators(object):
  MESSAGE_BUTTON = (By.ID, 'message-pro-button')
  CATEGORY_INFO = (By.ID, 'category-info')
  CHALLENGE_TEXT = (By.CLASS_NAME, 'challenge-text')

class MemberMessageModalLocators(object):
  MESSAGE_MODAL = (By.CLASS_NAME, 'modal-title')
  SEND_MESSAGE_BUTTON = (By.ID, 'send-message-button')

class MemberMessagePageLocators(object):
  MESSAGE_TEXTAREA = (By.ID, 'message-compose-field')
  SEND_MESSAGE_BUTTON = (By.ID, 'send-message-button')

class MemberDealsSearchPageLocators(object):
  SHOP_ALL_DEALS_LINK = (By.LINK_TEXT, 'Shop All Deals')
  DEALS_PAGINATION = (By.XPATH, "//a[contains(@id, 'pagination-page-')]")
  DEALS_RESULT_LIST = (By.XPATH, "//a[contains(@id, 'enhanced-offer-card-')]")
  POPULAR_OFFERS = (By.CLASS_NAME, 'popular-offers-container')

class MemberDealPageLocators(object):
  CLAIM_DEAL = (By.XPATH, "//button[text()='Claim This Deal']")
  PROJECT_DETAILS = (By.NAME, 'projectDetails')
  MODAL_NEXT_BUTTON_1 = (By.ID, 'offer-redemption-next-1')
  MODAL_TIME_FLEXIBLE_RADIO_BUTTON = (By.XPATH, "//label[@for='timing-control-ImFlexible']")
  MODAL_NEXT_BUTTON_2 = (By.ID, 'offer-redemption-next-2')
  MODAL_NEXT_BUTTON_3 = (By.ID, 'offer-redemption-next-3')
  MODAL_PHONE_NUMBER_FIELD_1 = (By.NAME, 'part1')
  MODAL_PHONE_NUMBER_FIELD_2 = (By.NAME, 'part2')
  MODAL_PHONE_NUMBER_FIELD_3 = (By.NAME, 'part3')