Feature:

  @statePagePageCall
  Scenario: testing segment pagecall on state page
    Given user is on a visitor state page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : US : State|
    Then the segment call contains parameters
      | prop_key    | prop_value                                           |
      | name        | Visitor : US : State                                 |
      | atTestOffer |                                                      |
      | cid         |                                                      |
      | pageVersion | Lullabot Redesign                                    |
      | path        | /companylist/us/mi/                                  |
      | search      |                                                      |
      | userId      |                                                      |
      | userType    |                                                      |
      | title       | Search Home Services in Michigan &vert; Angie's List |
      | pageState   | MI                                                   |
      | referrer    |                                                      |


##### Header Tests #####


    @statePageHeaderJoin @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the join link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params |
      | click         | #header-join  |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
      And the segment call contains parameters
      | prop_key         | prop_value           |
      | activityLocation | Visitor : US : State |
      | description      | Join link in header  |
      | userId           |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

    @statePageHeaderSignIn @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Sign In link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params   |
      | click         | #header-sign-in |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Sign In link in header |
      And the segment call contains parameters
      | prop_key         | prop_value             |
      | description      | Sign In link in header |
      | activityLocation | Visitor : US : State   |
      | userId           |                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

    @statePageHeaderBusinessOwners @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Business Owners link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params       |
      | click         | #business-center    |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
      | activityLocation | Visitor : US : State           |
      | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

    @statePageHeaderInteriorDrywall @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Interior - Plumbing link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                            |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : US : State                    |
      | description            | Interior menu category link in header   |
      | userId                 |                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/plumbing.htm"

    @statePageHeaderExteriorRoofing @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Exterior - Roofing link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label |
      | click           | css: #exterior-toggle > ul > li:nth-child(10) > a  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : US : State                    |
      | description            | Exterior menu category link in header   |
      | userId                 |                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/roofing.htm"

    @statePageHeaderExteriorViewAll @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Exterior - View All Categories link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label |
      | click           | css: #exterior-toggle > div > a                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                                         |
      | activityLocation       | Visitor : US : State                               |
      | description            | Exterior menu view all categories link in header   |
      | userId                 |                                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @statePageHeaderLawnViewAll @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Lawn & Garden - View All Categories link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                             |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | css: #lawn-toggle > div > a                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                                         |
      | activityLocation       | Visitor : US : State                               |
      | description            | Lawn & Garden menu view all categories link in header   |
      | userId                 |                                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @statePageHeaderMoreViewAll @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the More - View All Categories link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                             |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | css: #more-toggle > div:nth-child(5) > a                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                                         |
      | activityLocation       | Visitor : US : State                               |
      | description            | More menu view all categories link in header       |
      | userId                 |                                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"






##### Body Test #####




##### Footer Test #####


  Scenario: segment call on clicking the Join link in state footer
    Given user is on a visitor state page
    When a user performs actions
      | action_method | action_params |
      | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Join button in footer |
    And the segment call contains parameters
      | prop_key         | prop_value            |
      | description      | Join button in footer |
      | activityLocation | Visitor : US : State  |
      | userId           |                       |

  @topcities
  Scenario Outline: companylist state page top cities
      Given user is on a visitor state page
      When a user clicks on "<pageLink>"
      Then a segment track call is sent for a unique field value pair
        | unique_field | unique_value              |
        | description  | Top Cities link in footer |
      And the segment call contains parameters
        | prop_key         | prop_value                |
        | description      | Top Cities link in footer |
        | activityLocation | Visitor : US : State      |
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


