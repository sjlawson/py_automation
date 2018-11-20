Feature: 

  # Scenario: Making a gherkin passthru for existing test
  #   Then passthru for unittest step3

  @regression
  Scenario: testing segment pagecall on homepage
    Given user is on a page that sends a segment pagecall
    """
    /
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : Home |
    Then the segment call contains parameters
      | prop_key       | prop_value                                                            |
      | name           | Visitor : Home                                                        |
      | atTestOffer    |                                                                       |
      | cid            |                                                                       |
      | path           | /                                                                     |
      | srCtaDisplayed | true                                                                  |
      | userId         |                                                                       |
      | userType       | Visitor - New                                                         |
      | title          | Angie's List &vert; Join for FREE to see 10 Million Verified Reviews  |
      | srCtaVersion   | v2.1                                                                  |


      

      

      

      
