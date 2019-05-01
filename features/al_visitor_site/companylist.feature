Feature:

  @companyListPageCall @companyTreeDaily
  Scenario: Segment pagecall when CatNoGeo loads
    Given user is on the visitor site comnpanylist page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : Directory |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                         |
      | atTestOffer           |                                                                    |
      | cid                   |                                                                    |
      | name                  | Visitor : Directory                                                |
      | pageVersion           | Lullabot Redesign                                                  |
      | path                  | /companylist/                                                      |
      | referrer              |                                                                    |
      | search                |                                                                    |
      | title                 | Search Real Local Reviews, Home Services Guide &vert; Angie's List |
      | url                   |                                                                    |
      | userId                |                                                                    |
      | userType              | Visitor - New                                                      |


##### Header Tests #####

  @companyListPageHeaderJoinClick
  Scenario: User clicks on Header Join button on the Drupal CompanyList page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-join    |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | Visitor : Directory |
      | description      | Join link in header |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @companyListPageHeaderSignInClick
  Scenario: User clicks on Header Sign In button on the Drupal CompanyList page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-sign-in |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory                    |
      | description            | Sign In link in header            |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @companyListPageHeaderBusinessOwners
  Scenario: User clicks on the Business Owners button in the header on the Drupal Homepage
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: business-center |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory                    |
      | description            | Business Owners link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"







##### Body Tests #####







##### Footer Tests #####