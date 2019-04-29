Feature:

  @catNoGeoPageCall
  Scenario: Segment pagecall when CatNoGeo loads
    Given user is on a visitor site catnogeo page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                 |
      | atTestOffer           |                                                            |
      | categoryId            |                                                            |
      | cid                   |                                                            |
      | homeAdvisorCategoryId |                                                            |
      | name                  | Visitor : CatNoGeo                                         |
      | pageVersion           | Lullabot Redesign                                          |
      | path                  | /companylist/plumbing.htm                                  |
      | referrer              |                                                            |
      | search                |                                                            |
      | title                 | Local Plumbers - Find a Top-Rated Plumber on Angie's List  |
      | url                   |                                                            |
      | userId                |                                                            |
      | userType              | Visitor - New                                              |
      | visitorPageCategory   | PLUMBING                                                   |


##### Header Tests #####

  @headerJoinCatNoGeo
  Scenario: The Join button is clicked on CatNoGeo(Plumbing) page
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key            | prop_value          |
    | description         | Join link in header |
    | activityLocation    | Visitor : CatNoGeo  |
    | userId              |                     |
    | visitorPageCategory | Plumbing            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @headerSignInCatNoGeo
  Scenario: The Sign In link is clicked on the CatNoGeo(Plumbing) header
    Given user is on a visitor site catnogeo page
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
    | visitorPageCategory | Plumbing            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member"

  @headerBCCatNoGeo
  Scenario: The Business Center link is clicked on the CatNoGeo(Plumbing) header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params       |
    | click         | id: business-center |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Business Owners link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |
    | visitorPageCategory | Plumbing            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslistbusinesscenter.com"













  ## test_companyListCatNoGeoHeaderLinkClick
  Scenario: segment call on clicking the HIW link in CatNoGeo header
    Given user is on a visitor site catnogeo page
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

  ## test_companyListCatNoGeoHeaderFAQClick
  Scenario: segment call on clicking the FAQ link in CatNoGeo header
    Given user is on a visitor site catnogeo page
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













##### Body Tests #####





##### Footer Tests #####


  ## test_companyListCatNoGeoFooterJoinClick
  Scenario: segment call on clicking the Join link in CatNoGeo footer
    Given user is on a visitor site catnogeo page
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
    Given user is on a visitor site catnogeo page
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
