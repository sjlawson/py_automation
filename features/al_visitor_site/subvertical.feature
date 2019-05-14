Feature:

  @subverticalPageCall @subverticalHeader
  Scenario: Segment pagecall when the subvertical page loads
    Given user is on the visitor site subvertical page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | CNT : Subvertical |
    Then the segment call contains parameters
      | prop_key              | prop_value                             |
      | atTestOffer           |                                        |
      | cid |                                                          |
      | contentNodeId |                                                |
      | name | CNT : Subvertical                                       |
      | path | /lights/                                                |
      | referrer |                                                     |
      | search |                                                       |
      | subverticalName |                                              |
      | title | Lighting &vert; Angie's List                           |
      | url |                                                          |
      | userId |                                                       |
      | userType | Visitor - New                                       |
      | visitorPageCategory|                                           |


##### Header Tests #####

  @subverticalPageHeaderJoinClick @newHeader
  Scenario: User clicks on Header Join button on the Drupal subvertical page
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-join    |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | CNT : Subvertical |
      | description      | Join link in header |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @subverticalPageHeaderSignInClick @newHeader
  Scenario: User clicks on Header Sign In button on the Drupal subvertical page
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-sign-in |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | CNT : Subvertical          |
      | description            | Sign In link in header            |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @subverticalPageHeaderBusinessOwners @newHeader
  Scenario: User clicks on the Business Owners button in the header on the Drupal subvertical page
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: business-center |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | CNT : Subvertical          |
      | description            | Business Owners link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @subHeaderInteriorCarpetCleaning @newHeader
  Scenario: User hovers then clicks on Carpet Cleaning in the header on the Drupal subvertical
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | CNT : Subvertical                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/carpet-cleaning.htm"

  @subHeaderExteriorBuilders @newHeader
  Scenario: User hovers then clicks on Home Buildsers in the header on the Drupal subvertical
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | CNT : Subvertical                     |
      | description            | Exterior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/home-builders.htm"

  @subHeaderLawnViewAllCategories @newHeader
  Scenario: User hovers then clicks on Lawn & Garden View All Categories in the header on the Drupal subvertical
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | CNT : Subvertical                     |
      | description            | Lawn & Garden menu view all categories link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @subHeaderMorePests @newHeader
  Scenario: User hovers then clicks on Pest Control in the header on the Drupal subvertical
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | CNT : Subvertical                     |
      | description            | More menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pest-control.htm"

  @subHeaderAdviceFlooring @newHeader
  Scenario: User hovers then clicks on Pest Control in the header on the Drupal subvertical
    Given user is on the visitor site subvertical page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | activityLocation | CNT : Subvertical |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | CNT : Subvertical                     |
      | description            | Articles & Advice menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/flooring/"




##### Body Tests #####







##### Footer Tests #####