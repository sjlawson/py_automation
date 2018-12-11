@visitorSegmentExample
Feature: 

  Scenario: testing segment pagecall on companylist page
    Given user is on a visitor site page
    """
    /companylist
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : Directory |
    Then the segment call contains parameters
      | prop_key    | prop_value                                                         |
      | name        | Visitor : Directory                                                |
      | atTestOffer |                                                                    |
      | cid         |                                                                    |
      | pageVersion | Lullabot Redesign                                                  |
      | path        | /companylist/                                                      |
      | search      |                                                                    |
      | userId      |                                                                    |
      | userType    | Visitor - New                                                      |
      | title       | Search Real Local Reviews, Home Services Guide &vert; Angie's List |
