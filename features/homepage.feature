Feature: 

  # Scenario: Making a gherkin passthru for existing test
  #   Then passthru for unittest step3

  @regression
  Scenario: Gherkin feature to describe a segment pagecall
    Given user is on the companylist page
    """
    /companylist
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value |
      | name         | Visitor : Directory |
    Then the segment call contains parameters
      | name        | Visitor : Directory                                             |
      | atTestOffer |                                                                 |
      | cid         |                                                                 |
      | pageVersion | Lullabot Redesign                                               |
      | path        | /companylist/                                                   |
      | search      |                                                                 |
      | userId      |                                                                 |
      | userType    | Visitor - New                                                   |
      | title       | "Search Real Local Reviews, Home Services Guide \| Angie\'s List" |

      
