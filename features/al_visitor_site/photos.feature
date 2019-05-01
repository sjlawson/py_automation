@photos
Feature:

  @photosPageCall
  Scenario: Segment pagecall when the photos page loads
    Given user is on the visitor site photos page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | CNT : Photo Landing Page |
    Then the segment call contains parameters
      | prop_key              | prop_value                             |
      | atTestOffer           |                                        |
      | cid |                                                          |
      | name | CNT : Photo Landing Page                                |
      | path | /photos/                                                |
      | referrer |                                                     |
      | search |                                                       |
      | title | Home Inspiration and Design Center &vert; Angie's List |
      | url |                                                          |
      | userId |                                                       |
      | userType | Visitor - New                                       |

##### Header Tests #####

  @photosPageHeaderJoinClick
  Scenario: User clicks on Header Join button on the Drupal photos page
    Given user is on the visitor site photos page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-join    |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | CNT : Photo Landing Page |
    And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | CNT : Photo Landing Page |
      | description      | Join link in header |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @photosPageHeaderSignInClick
  Scenario: User clicks on Header Sign In button on the Drupal photos page
    Given user is on the visitor site photos page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-sign-in |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | CNT : Photo Landing Page |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | CNT : Photo Landing Page          |
      | description            | Sign In link in header            |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @photosPageHeaderBusinessOwners
  Scenario: User clicks on the Business Owners button in the header on the Drupal Homepage
    Given user is on the visitor site photos page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: business-center |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | CNT : Photo Landing Page |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | CNT : Photo Landing Page          |
      | description            | Business Owners link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"







##### Body Tests #####







##### Footer Tests #####