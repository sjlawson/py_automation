@companylistTree
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


    Scenario: segment call on clicking the join link in topcity header
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
      | visitorPageGeo   | INDIANAPOLIS        |


    Scenario: segment call on clicking the HIW link in topcity header
      Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params       |
      | click         | .btnHiw |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                |
      | description  | How it Works link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                  |
      | description      | How it Works link in header |
      | activityLocation | Visitor : US : City         |
      | userId           |                             |
      | visitorPageGeo   | INDIANAPOLIS                |

    
    Scenario: segment call on clicking the Sign In link in topcity header
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
      | visitorPageGeo   | INDIANAPOLIS           |

 
    Scenario: segment call on clicking the FAQ link in topcity header
      Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params   |
      | click         | #faq |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | FAQ link in header |
      And the segment call contains parameters
      | prop_key         | prop_value          |
      | description      | FAQ link in header  |
      | activityLocation | Visitor : US : City |
      | userId           |                     |
      | visitorPageGeo   | INDIANAPOLIS        |


    Scenario: segment call on clicking the Press link in topcity header
      Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params |
      | click         | #press        |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                |
      | description  | In the Press link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                  |
      | description      | In the Press link in header |
      | activityLocation | Visitor : US : City         |
      | userId           |                             |
      | visitorPageGeo   | INDIANAPOLIS                |


    Scenario: segment call on clicking the SC link in topcity header
      Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params |
      | click         | #articles     |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Solution Center link in header  |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Solution Center link in header |
      | activityLocation | Visitor : US : City            |
      | userId           |                                |
      | visitorPageGeo   | INDIANAPOLIS                   |


    Scenario: segment call on clicking the BC link in topcity header
      Given user is on a visitor topcity page
      When a user performs actions
      | action_method | action_params       |
      | click         | #nav_business_owner |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
      | activityLocation | Visitor : US : City            |
      | userId           |                                |
      | visitorPageGeo   | INDIANAPOLIS                   |


    Scenario: segment call on clicking the Join link in topcity footer
      Given user is on a visitor topcity page
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
      | visitorPageGeo   | INDIANAPOLIS          |

      
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


  