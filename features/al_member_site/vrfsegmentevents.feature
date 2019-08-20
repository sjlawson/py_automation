Feature:
  @test123
  Scenario: test segment call on clicking the Approximate Cost of Service field on VRF
    Given user is on a member site review page
    """
    /edit?serviceProviderId=10803144
    """
    When a user performs actions
    | action_method | action_params                  |
    | click         | #review--cost-of-service-input |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                         |
    | description  | Review - Approximate cost of service |
    And the segment call contains parameters
    | prop_key          | prop_value                           |
    | description       | Review - Approximate cost of service |
    | userType          | Not Authenticated                    |
    | serviceProviderId | 10803144                             |


  Scenario: test segment call on clicking Choose File on VRF
    Given user is on a member site review page
    """
    /edit?serviceProviderId=10803144
    """
    When a user performs actions
    | action_method | action_params              |
    | click         | #reviews--add-media-button |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                      |
    | description  | Review Form : Choose File Clicked |
    And the segment call contains parameters
    | prop_key          | prop_value                        |
    | description       | Review Form : Choose File Clicked |
    | userType          | Not Authenticated                 |
    | serviceProviderId | 10803144                          |
