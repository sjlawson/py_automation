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