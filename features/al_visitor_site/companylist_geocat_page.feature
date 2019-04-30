Feature:

  @geoCatSegmentSRNoZip @daily_auto
  Scenario: User is on a GeoCat Page and selects the SR flow without any postal code.
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params   |
    | click         | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Service Request Flow entry button |
    And the segment call contains parameters
    | prop_key         | prop_value        |
    | description      | Service Request Flow entry button |
    | activityLocation | Visitor : Geocat  |
    | userId           |                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode="

  @geoCatSegmentSRWithZip @daily_auto
  Scenario: SR CTA button click on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method   | action_params   |
    | move_to_element | #ha-lead-zip    |
    | click           | #ha-lead-zip    |
    | send_keys       | 90068           |
    | click           | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Service Request Flow entry button |
    And the segment call contains parameters
    | prop_key         | prop_value        |
    | description      | Service Request Flow entry button |
    | activityLocation | Visitor : Geocat  |
    | userId           |                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode=90068"