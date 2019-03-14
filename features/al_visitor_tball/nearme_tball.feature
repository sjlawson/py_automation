Feature:

  @nearmeClick
  Scenario: Clicking major market link on Near Me pages
    Given user is on a visitor site tball page
    """
    /nearme/landscaping
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | id: major-market-link-Albany |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Major Market Clicked |
    And the segment call contains parameters
      | prop_key         | prop_value           |
      | description      | Major Market Clicked |
      | activityLocation | Visitor : Near Me    |
      | cityClicked      | Albany               |
      | keywordSearched  | /nearme/landscaping/ |
      | pathName         | /nearme/landscaping/ |

  @checkElement
  Scenario: Verify link element exists on Near Me pages
    Given user is on a visitor site tball page
    """
    /nearme/landscaping
    """
    When the page loads
    Then the following element css selectors are clickable
    | selector                                                       |
    | id: major-market-link-Albany                                   |


