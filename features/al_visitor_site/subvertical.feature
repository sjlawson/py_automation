Feature:

  @subverticalPageCall
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

  @subverticalPageHeaderJoinClick @headerDailyRegression
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

  @subverticalPageHeaderSignInClick @headerDailyRegression
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

  @subverticalPageHeaderBusinessOwners @headerDailyRegression
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







##### Body Tests #####







##### Footer Tests #####