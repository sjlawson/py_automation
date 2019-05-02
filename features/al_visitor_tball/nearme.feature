Feature:


  @nearMeFurnaceRepairWithZipPageCall
  Scenario: Segment pagecall when the NearMe furnace-repair page loads
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Visitor : Near Me |
    Then the segment call contains parameters
      | prop_key                        | prop_value                                        |
      | name                            | Visitor : Near Me                                 |
      | path                            | /nearme/furnace-repair/                           |
      | pathName                        | /nearme/furnace-repair/                           |
      | postalCodesList                 | 90210                                             |
      | referrer                        |                                                   |
      | results                         |                                                   |
      | search                          |                                                   |
      | srCtaDisplayed                  |                                                   |
      | title                           | Top 10 Furnace Repair Near Me &vert; Angie's List |
      | totalResults                    |                                                   |
      | url                             |                                                   |
      | visitorPage4_0Category          | HEATING AND AIR CONDITIONING                      |
      | visitorPage4_0CategorySecondary |                                                   |
      | visitorPageCategory             | HEATING & A/C                                     |
      | visitorPageCategorySecondary    |                                                   |






  @nearmeClick
  Scenario: Clicking major market link on Near Me pages
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
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
    /nearme/furnace-repair/?postalCode=90210
    """
    When the page loads
    Then the following element css selectors are clickable
    | selector                                                       |
    | id: major-market-link-Albany                                   |


