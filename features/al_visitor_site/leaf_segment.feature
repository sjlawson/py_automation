@visitorSegmentExample @daily_auto
Feature: 

  Scenario: User fills zipcode on Leaf CTA
    Given user is on a visitor site page
    """
    /companylist/us/nc/raleigh/alpha-omega-construction-group-inc-reviews-8807061.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-zip    |
      | send_keys       | 27610              |
      | move_to_element | id: ha-lead-submit |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                      |
      | description  | Service Request Flow entry button |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | categoryId             | 112                               |
      | description            | Service Request Flow entry button |
      | marketId               | 40                                |
      | userId                 |                                   |
      | userSelectedZipCode    | 27610                             |
      | visitorPageCategory    | Roofing                           |
      | visitorPageGeo         | RALEIGH/DURHAM                    |
      | visitorPageGeoCategory | RALEIGH/DURHAM - ROOFING          |
