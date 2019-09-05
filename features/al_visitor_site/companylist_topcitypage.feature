Feature:

  Scenario: testing segment pagecall on topcity page
    Given user is on a visitor topcity page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : US : City |
    Then the segment call contains parameters
      | prop_key    | prop_value                                                        |
      | name        | Visitor : US : City                                               |
      | atTestOffer |                                                                   |
      | cid         |                                                                   |
      | pageVersion | Lullabot Redesign                                                 |
      | path        | /companylist/indianapolis/                                        |
      | search      |                                                                   |
      | userId      |                                                                   |
      | userType    |                                                                   |
      | title       | Indianapolis, Indiana Local Home Service Pros &vert; Angie's List |


##### Header Tests #####


    @headerJoinStatePage @newHeader
    Scenario: State Page clicking the join link in the header
    Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params |
      | click         | #header-join  |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
      And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | Visitor : US : City |
      | description      | Join link in header |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

    @headerSignInStatePage @newHeader
    Scenario: State Page clicking the Sign In link in the header
    Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params   |
      | click         | #header-sign-in |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Sign In link in header |
      And the segment call contains parameters
      | prop_key         | prop_value             |
      | description      | Sign In link in header |
      | activityLocation | Visitor : US : City    |
      | userId           |                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

    @headerBusinessOwnersStatePage @newHeader
    Scenario: State Page clicking the Business Owners link in the header
    Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params       |
      | click         | #business-center    |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
      | activityLocation | Visitor : US : City            |
      | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

    @TopCityPageInteriorDrywall @newHeader
    Scenario: Top City Page clicking the Interior - Drywall link in the header
    Given user is on a visitor topcity page
      When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : US : City   |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : US : City              |
      | description            | Interior menu category link in header   |
      | userId                 |                                  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/drywall.htm"




















    @companylistTopCities @topcities
    Scenario Outline: companylist topcity page top cities
        Given user is on a visitor topcity page
        When a user clicks on "<pageLink>"
        Then a segment track call is sent for a unique field value pair
        | unique_field | unique_value              |
        | description  | Top Cities link in footer |
        And the segment call contains parameters
        | prop_key         | prop_value                |
        | description      | Top Cities link in footer |
        | activityLocation | Visitor : US : City       |
        | userId           |                           |
      Examples: pageLink
      | pageLink                           |
      | id: footer-top-cities-new-york     |
      | id: footer-top-cities-houston      |
      | id: footer-top-cities-chicago      |
      | id: footer-top-cities-indianapolis |
      | id: footer-top-cities-boston       |
      | id: footer-top-cities-atlanta      |
      | id: footer-top-cities-cincinnati   |
      | id: footer-top-cities-los-angeles  |
      | id: footer-top-cities-dallas       |
      | id: footer-top-cities-pittsburgh   |
      | id: footer-top-cities-minneapolis  |
      | id: footer-top-cities-las-vegas    |
      | id: footer-top-cities-san-antonio  |
      | id: footer-top-cities-tampa-bay    |



