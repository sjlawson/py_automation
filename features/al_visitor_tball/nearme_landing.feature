Feature:

  @nearMePage
  Scenario: Segment pagecall when the NearMe landing page loads
    Given user is on a visitor site tball nearme landing page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | name         | Visitor : Near Me Landing Page |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                               |
      | name                  | Visitor : Near Me Landing Page                                           |
      | path                  | /nearme/                                                                 |
      | referrer              |                                                                          |
      | search                |                                                                          |
      | srCtaDisplayed        |                                                                          |
      | title                 | Services & Companies Near Me &vert; Quickly Hire the Best &vert; Angie's List |
      | url                   |                                                                          |




  @qqq
  Scenario: User clicks on Join Now in the header on the tball NearMe landing page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: header--join-for-free-button |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor :  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor :                     |
      | description            | Join link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"