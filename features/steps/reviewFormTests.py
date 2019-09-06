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
  SIGN_IN_TOGGLE = (By.ID, 'sign-in-toggle')
  SIGN_IN_EMAIL = (By.ID, 'signin-form--email')
  SIGN_IN_PASSWORD = (By.ID, 'signin-form--password')
  SING_IN_FORM_SUBMIT = (By.ID, 'signin-form--submit')

class ReviewLetterGradeSelectors(object):
  OVERALL_A_GRADE = (By.ID, 'reviews--rating-Overall--A')
  OVERALL_B_GRADE = (By.ID, 'reviews--rating-Overall--B')
  OVERALL_C_GRADE = (By.ID, 'reviews--rating-Overall--C')
  OVERALL_D_GRADE = (By.ID, 'reviews--rating-Overall--D')
  OVERALL_F_GRADE = (By.ID, 'reviews--rating-Overall--F')
  PRICE_A_GRADE = (By.ID, 'reviews--rating-Price--A')
  PRICE_B_GRADE = (By.ID, 'reviews--rating-Price--B')
  PRICE_C_GRADE = (By.ID, 'reviews--rating-Price--C')
  PRICE_D_GRADE = (By.ID, 'reviews--rating-Price--D')
  PRICE_F_GRADE = (By.ID, 'reviews--rating-Price--F')
  PRICE_NA_GRADE = (By.ID, 'reviews--rating-Price--N/A')
  QUALITY_A_GRADE = (By.ID, 'reviews--rating-Quality--A')
  QUALITY_B_GRADE = (By.ID, 'reviews--rating-Quality--B')
  QUALITY_C_GRADE = (By.ID, 'reviews--rating-Quality--C')
  QUALITY_D_GRADE = (By.ID, 'reviews--rating-Quality--D')
  QUALITY_F_GRADE = (By.ID, 'reviews--rating-Quality--F')
  QUALITY_NA_GRADE = (By.ID, 'reviews--rating-Quality--N/A')
  RESPONSIVENESS_A_GRADE = (By.ID, 'reviews--rating-Responsiveness--A')
  RESPONSIVENESS_B_GRADE = (By.ID, 'reviews--rating-Responsiveness--B')
  RESPONSIVENESS_C_GRADE = (By.ID, 'reviews--rating-Responsiveness--C')
  RESPONSIVENESS_D_GRADE = (By.ID, 'reviews--rating-Responsiveness--D')
  RESPONSIVENESS_F_GRADE = (By.ID, 'reviews--rating-Responsiveness--F')
  RESPONSIVENESS_NA_GRADE = (By.ID, 'reviews--rating-Responsiveness--N/A')
  PUNCTUALITY_A_GRADE = (By.ID, 'reviews--rating-Punctuality--A')
  PUNCTUALITY_B_GRADE = (By.ID, 'reviews--rating-Punctuality--B')
  PUNCTUALITY_C_GRADE = (By.ID, 'reviews--rating-Punctuality--C')
  PUNCTUALITY_D_GRADE = (By.ID, 'reviews--rating-Punctuality--D')
  PUNCTUALITY_F_GRADE = (By.ID, 'reviews--rating-Punctuality--F')
  PUNCTUALITY_NA_GRADE = (By.ID, 'reviews--rating-Punctuality--N/A')
  PROFESSIONALISM_A_GRADE = (By.ID, 'reviews--rating-Professionalism--A')
  PROFESSIONALISM_B_GRADE = (By.ID, 'reviews--rating-Professionalism--B')
  PROFESSIONALISM_C_GRADE = (By.ID, 'reviews--rating-Professionalism--C')
  PROFESSIONALISM_D_GRADE = (By.ID, 'reviews--rating-Professionalism--D')
  PROFESSIONALISM_F_GRADE = (By.ID, 'reviews--rating-Professionalism--F')
  PROFESSIONALISM_NA_GRADE = (By.ID, 'reviews--rating-Professionalism--N/A')
  AVAILABILITY_A_GRADE = (By.ID, 'reviews--rating-Availability--A')
  AVAILABILITY_B_GRADE = (By.ID, 'reviews--rating-Availability--B')
  AVAILABILITY_C_GRADE = (By.ID, 'reviews--rating-Availability--C')
  AVAILABILITY_D_GRADE = (By.ID, 'reviews--rating-Availability--D')
  AVAILABILITY_F_GRADE = (By.ID, 'reviews--rating-Availability--F')
  AVAILABILITY_NA_GRADE = (By.ID, 'reviews--rating-Availability--N/A')




     | move_to_element | id: reviews--rating-Availability--A     |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Office Environment--A   |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Punctuality--A    |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Staff Friendliness--A       |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Bedside Manner--A   |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Communication--A     |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Effectiveness of Treatment--A |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Billing and Administration--A |

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