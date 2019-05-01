Feature:
  @cityPageCall @companyTreeDaily
  Scenario: City Page(Fishers Indiana) Pageload
    Given user is on a visitor city page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : US : City |
    Then the segment call contains parameters
      | prop_key                | prop_value                                                     |
      | atTestOffer             |                                                                |
      | cid                     |                                                                |
      | name                    | Visitor : US : City                                            |
      | pageCity                | Fishers, IN                                                    |
      | pageVersion             | Lullabot Redesign                                              |
      | path                    | /companylist/us/in/fishers/                                    |
      | referrer                |                                                                |
      | search                  |                                                                |
      | title                   | Fishers, Indiana Local Home Service Pros &vert; Angie's List   |
      | url                     |                                                                |
      | userType                |                                                                |
      | userId                  |                                                                |


##### Header Tests #####
    @headerJoinRegCityPage @companyTreeDaily @headerDailyRegression
    Scenario: City Page(Fishers Indiana) clicking the join link in the header
      Given user is on a visitor city page
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
      | visitorPageGeo   | FISHERS IN          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

    @headerSignInRegCityPage @companyTreeDaily @headerDailyRegression
    Scenario: City Page(Fishers Indiana) clicking the Sign In link in the header
      Given user is on a visitor city page
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
      | visitorPageGeo   | FISHERS IN             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

    @headerBusinessOwnersRegCityPage @companyTreeDaily @headerDailyRegression
    Scenario: City Page(Fishers Indiana) clicking the Business Owners link in the header
      Given user is on a visitor city page
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

    @regCityPageInteriorDrywall @companyTreeDaily @headerDailyRegression
    Scenario: City Page(Fishers Indiana) clicking the Interior - Plumbing link in the header
      Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : US : City   |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : US : City              |
      | description            | Near Me link in desktop header   |
      | userId                 |                                  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"


##### Body Test #####





##### Footer Test #####


    @topcities
    Scenario Outline: companylist city page cities
        Given user is on a visitor city page
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


    Scenario: segment call on clicking the Join link in city footer
      Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params |
      | click         | #footer-join  |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Join button in footer |
      And the segment call contains parameters
      | prop_key         | prop_value            |
      | description      | Join button in footer |
      | activityLocation | Visitor : US : City   |
      | userId           |                       |
      | visitorPageGeo   | FISHERS IN            |