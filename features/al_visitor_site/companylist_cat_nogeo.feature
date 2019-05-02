@catNoGeo
Feature:

  @catNoGeoPageCallSrOverlap @catNoGeoDaily @companyTreeDaily
  Scenario: a user lands the CatNoGeo page that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value       |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                               |
      | atTestOffer           |                                                                          |
      | categoryId            | 79                                                                       |
      | cid                   |                                                                          |
      | homeAdvisorCategoryId | 12041                                                                    |
      | name                  | Visitor : CatNoGeo                                                       |
      | pageVersion           | Lullabot Redesign                                                        |
      | path                  | /companylist/home-inspection.htm                                         |
      | referrer              |                                                                          |
      | search                |                                                                          |
      | srCtaDisplayed        | true                                                                     |
      | title                 | Local Home Inspectors - Find a Top-Rated Home Inspector on Angie's List  |
      | url                   |                                                                          |
      | userId                |                                                                          |
      | userType              | Visitor - New                                                            |
      | visitorPageCategory   | HOME INSPECTION                                                          |

  @catNoGeoPageCallNoSrOverlap @catNoGeoDaily @companyTreeDaily
  Scenario: a user lands the CatNoGeo page that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value       |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                        |
      | atTestOffer           |                                                                   |
      | categoryId            | 102                                                               |
      | cid                   |                                                                   |
      | homeAdvisorCategoryId |                                                                   |
      | name                  | Visitor : CatNoGeo                                                |
      | pageVersion           | Lullabot Redesign                                                 |
      | path                  | /companylist/pet-care.htm                                         |
      | referrer              |                                                                   |
      | search                |                                                                   |
      | srCtaDisplayed        |                                                                   |
      | title                 | Local Pet Sitters - Find a Top-Rated Pet Service on Angie's List  |
      | url                   |                                                                   |
      | userId                |                                                                   |
      | userType              | Visitor - New                                                     |
      | visitorPageCategory   | ANIMAL & HOUSE SITTING |


##### Header Tests #####

  Scenario: join button on CatNoGeo page that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key         | prop_value          |
    | description      | Join link in header |
    | activityLocation | Visitor : CatNoGeo  |
    | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  Scenario: segment call on clicking the HIW link in CatNoGeo header that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | .btnHiw       |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                |
    | description  | How it Works link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                  |
    | description      | How it Works link in header |
    | activityLocation | Visitor : CatNoGeo          |
    | userId           |                             |

  Scenario: segment call on clicking the Sign In link in CatNoGeo header that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params   |
    | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | Sign In link in header |
    And the segment call contains parameters
    | prop_key         | prop_value             |
    | description      | Sign In link in header |
    | activityLocation | Visitor : CatNoGeo     |
    | userId           |                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  Scenario: segment call on clicking the FAQ link in CatNoGeo header that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params   |
    | click         | #faq |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | FAQ link in header |
    And the segment call contains parameters
    | prop_key         | prop_value         |
    | description      | FAQ link in header |
    | activityLocation | Visitor : CatNoGeo |
    | userId           |                    |

  Scenario: segment call on clicking the Press link in CatNoGeo header that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | #press        |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                |
    | description  | In the Press link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                  |
    | description      | In the Press link in header |
    | activityLocation | Visitor : CatNoGeo          |
    | userId           |                             |

  Scenario: segment call on clicking the SC link in CatNoGeo header that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | #articles     |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Solution Center link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Solution Center link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |

  Scenario: segment call on clicking the BC link in CatNoGeo header that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params       |
    | click         | #nav_business_owner |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Business Owners link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  Scenario: join button on CatNoGeo page that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key         | prop_value          |
    | description      | Join link in header |
    | activityLocation | Visitor : CatNoGeo  |
    | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  Scenario: segment call on clicking the HIW link in CatNoGeo header that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | .btnHiw       |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                |
    | description  | How it Works link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                  |
    | description      | How it Works link in header |
    | activityLocation | Visitor : CatNoGeo          |
    | userId           |                             |

  Scenario: segment call on clicking the Sign In link in CatNoGeo header that is an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a user performs actions
    | action_method | action_params   |
    | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | Sign In link in header |
    And the segment call contains parameters
    | prop_key         | prop_value             |
    | description      | Sign In link in header |
    | activityLocation | Visitor : CatNoGeo     |
    | userId           |                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  Scenario: segment call on clicking the FAQ link in CatNoGeo header that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a user performs actions
    | action_method | action_params   |
    | click         | #faq |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | FAQ link in header |
    And the segment call contains parameters
    | prop_key         | prop_value         |
    | description      | FAQ link in header |
    | activityLocation | Visitor : CatNoGeo |
    | userId           |                    |

  Scenario: segment call on clicking the Press link in CatNoGeo header that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | #press        |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                |
    | description  | In the Press link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                  |
    | description      | In the Press link in header |
    | activityLocation | Visitor : CatNoGeo          |
    | userId           |                             |

  Scenario: segment call on clicking the SC link in CatNoGeo header that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | #articles     |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Solution Center link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Solution Center link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |

  Scenario: segment call on clicking the BC link in CatNoGeo header that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a user performs actions
    | action_method | action_params       |
    | click         | #nav_business_owner |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Business Owners link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"






##### Body Tests #####


  @catNoGeoBodyHeroSrCtaFindProsNoZip @catNoGeoBodyRegression
  Scenario: User clicks on hero Find Pros CTA (No Zip) button on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
      | action_method   | action_params         |
      | move_to_element | id: ha-lead-submit    |
      | click           |                       |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : CatNoGeo                          |
      | description            | Service Request Flow entry button           |
      | userId	               |                                             |
      | userSelectedZipCode	   |                                             |
      | visitorPageCategory    |                                             |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Home-Inspection.12041.html?entry_point_id=33880173&postalCode="


  @catNoGeoBodyHeroSrCtaFindProsWithZip
  Scenario: User clicks on hero Find Pros CTA (With Zip) button on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | #ha-lead-zip       |
      | click           |                    |
      | send_keys       | 49726              |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #ha-lead-submit     |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                  |
      | activityLocation | Visitor : CatNoGeo        |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Service Request Flow entry button |
      | userId                 |                                   |
      | userSelectedZipCode    | 49726                             |
      | visitorPageCategory    | Home Inspection                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Home-Inspection.12041.html?entry_point_id=33880173&postalCode=49726"


  @catNoGeoBodySegmentSrCtaFindProsEnter
  Scenario: User clicks on hero Find Pros CTA button on Drupal Homepage
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | #ha-lead-zip   |
      | click           |                    |
      | send_keys       | 49726           |
    Then we wait "1" seconds for the next page to load
    Then press the "ENTER" key while "#ha-lead-zip" is in focus
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                  |
      | activityLocation | Visitor : CatNoGeo        |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Service Request Flow entry button |
      | userId                 |                                   |
      | userSelectedZipCode    | 49726                             |
      | visitorPageCategory    | Home Inspection                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Home-Inspection.12041.html?entry_point_id=33880173&postalCode=49726"


















  ## test_companyListCatNoGeoFooterJoinClick
  Scenario: segment call on clicking the Join link in CatNoGeo footer
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user performs actions
    | action_method | action_params |
    | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value          |
    | description  | Join button in footer |
    And the segment call contains parameters
    | prop_key         | prop_value            |
    | description      | Join button in footer |
    | activityLocation | Visitor : CatNoGeo    |
    | userId           |                       |


  ## test_companyListCatNoGeo_topCities
  @topcities @catnogeo_topcities
  Scenario Outline: companylist CatNoGeo top cities
    Given user is on a visitor site catnogeo page that is an SR overlap category
    When a user clicks on "<pageLink>"
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value              |
    | description  | Top Cities link in footer |
    And the segment call contains parameters
    | prop_key         | prop_value                |
    | description      | Top Cities link in footer |
    | activityLocation | Visitor : CatNoGeo        |
    | userId           |                           |
    Examples: pageLink
    | pageLink                           |
    | id: footer-top-cities-new-york     |
    | id: footer-top-cities-houston      |
    | id: footer-top-cities-chicago      |
    | id: footer-top-cities-indianapolis |
    | id: footer-top-cities-boston       |
    | id: footer-top-cities-atlanta      |
    | id: footer-top-cities-cincinnati   |
    | id: footer-top-cities-los-angeles  |
    | id: footer-top-cities-dallas       |
    | id: footer-top-cities-pittsburgh   |
    | id: footer-top-cities-minneapolis  |
    | id: footer-top-cities-las-vegas    |
    | id: footer-top-cities-san-antonio  |
    | id: footer-top-cities-tampa-bay    |
