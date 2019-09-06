from selenium.webdriver.common.by import By

class MemberJoinVRF(object):
  JOIN_EMAIL = (By.ID, 'signup-form--email')
  JOIN_FIRST_NAME = (By.ID, 'signup-form--first-name')
  JOIN_LAST_NAME = (By.ID, 'signup-form--last-name')
  JOIN_PASSWORD = (By.ID, 'signup-form--password')
  JOIN_TAB = (By.ID, 'sign-up-toggle')

class VRFJoinAddressLocators(object):
  ADDRESS_FIRST_LINE = (By.ID, 'address-component--first-line')
  ADDRESS_SECOND_LINE = (By.ID, 'address-component--second-line')
  ADDRESS_CITY = (By.ID, 'address-component--city')
  ADDRESS_STATE = (By.ID, 'address-component--state')
  ADDRESS_ZIP = (By.ID, 'address-component--zip-code')
  ADDRESS_SUBMIT = (By.ID, 'address-collection--submit-button')

class VRFFinishButtons(object):
  SUBMIT_BUTTON = (By.ID, 'signup-form--submit')
  USER_AGREEMENT_BUTTON = (By.ID, 'signup-form--membership-agreement')

class VRFHappyPathSelectors(object):
  OVERALL_A_GRADE = (By.ID, 'reviews--rating-Overall--A')
  PRICE_A_GRADE = (By.ID, 'reviews--rating-Price--A')
  QUALITY_A_GRADE = (By.ID, 'reviews--rating-Quality--A')
  RESPONSIVENESS_A_GRADE = (By.ID, 'reviews--rating-Responsiveness--A')
  PUNCTUALITY_A_GRADE = (By.ID, 'reviews--rating-Punctuality--A')
  PROFESSIONALISM_A_GRADE = (By.ID, 'reviews--rating-Professionalism--A')
  WORK_COMPLETED_YES = (By.ID, 'reviews--workComplete-button-yes')
  WILL_HIRE_AGAIN_YES = (By.ID, 'reviews--willHireAgain-button-yes')
  DESCRIPTION_OF_WORK = (By.ID, 'review--description-of-work-input')
  HOW_DID_IT_GO = (By.ID, 'review--how-did-it-go-input')
  REVIEW_SUBMIT_BUTTON = (By.ID, 'reviews--submit-button')

class VRFHappyMixedPathSelectors(object):
  OVERALL_B_GRADE = (By.ID, 'reviews--rating-Overall--B')
  PRICE_A_GRADE = (By.ID, 'reviews--rating-Price--A')
  QUALITY_C_GRADE = (By.ID, 'reviews--rating-Quality--C')
  RESPONSIVENESS_A_GRADE = (By.ID, 'reviews--rating-Responsiveness--A')
  PUNCTUALITY_B_GRADE = (By.ID, 'reviews--rating-Punctuality--B')
  PROFESSIONALISM_A_GRADE = (By.ID, 'reviews--rating-Professionalism--A')
  WORK_COMPLETED_YES = (By.ID, 'reviews--workComplete-button-yes')
  WILL_HIRE_AGAIN_NO = (By.ID, 'reviews--willHireAgain-button-no')
  DESCRIPTION_OF_WORK = (By.ID, 'review--description-of-work-input')
  HOW_DID_IT_GO = (By.ID, 'review--how-did-it-go-input')
  REVIEW_SUBMIT_BUTTON = (By.ID, 'reviews--submit-button')