Feature:

  Scenario: testing segment pagecall on state page
    Given user is on a visitor state page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : US : State |
    Then the segment call contains parameters
      | prop_key    | prop_value                                           |
      | name        | Visitor : US : State                                 |
      | atTestOffer |                                                      |
      | cid         |                                                      |
      | pageVersion | Lullabot Redesign                                    |
      | path        | /companylist/us/mi/                                  |
      | search      |                                                      |
      | userId      |                                                      |
      | userType    | Visitor - New                                        |
      | title       | Search Home Services in Michigan &vert; Angie's List |
      | pageState   | MI                                                   |
      | referrer    |                                                      |

   Scenario: segment call on clicking the join link in state header
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


    Scenario: segment call on clicking the HIW link in state header
      Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params       |
      | click         | .btnHiw |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                |
      | description  | How it Works link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                  |
      | description      | How it Works link in header |
      | activityLocation | Visitor : US : State        |
      | userId           |                             |

    
    Scenario: segment call on clicking the Sign In link in state header
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

   Scenario: segment call on clicking the FAQ link in state header
      Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params   |
      | click         | #faq |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | FAQ link in header |
      And the segment call contains parameters
      | prop_key         | prop_value           |
      | description      | FAQ link in header   |
      | activityLocation | Visitor : US : State |
      | userId           |                      |


    Scenario: segment call on clicking the Press link in state header
      Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params |
      | click         | #press        |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                |
      | description  | In the Press link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                  |
      | description      | In the Press link in header |
      | activityLocation | Visitor : US : State        |
      | userId           |                             |


    Scenario: segment call on clicking the SC link in state header
      Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params |
      | click         | #articles     |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Solution Center link in header  |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Solution Center link in header |
      | activityLocation | Visitor : US : State           |
      | userId           |                                |


    Scenario: segment call on clicking the BC link in state header
      Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params       |
      | click         | #nav_business_owner |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
      | activityLocation | Visitor : US : State           |
      | userId           |                                |


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
      | pageLink                                                                                    |
      | .footer-region.cities-left > li > a[title="Search New York Pros"]                           |
      | .footer-region.cities-left > li > a[title="Search Houston Pros"]                            |
      | .footer-region.cities-left > li > a[title="Search Chicago Pros"]                            |
      | .footer-region.cities-left > li > a[title="Search Indianapolis Pros"]                       |
      | .footer-region.cities-left > li > a[title="Search Boston Pros"]                             |
      | .footer-region.cities-left > li > a[title="Search Atlanta Pros"]                            |
      | .top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Pros"]   |
      | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Pros"] |
      | .footer-region.cities-right > li > a[title="Search Dallas Pros"]                            |
      | .footer-region.cities-right > li > a[title="Search Pittsburgh Pros"]                        |
      | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Minneapolis Pros"] |
      | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Las Vegas Pros"]   |
      | .footer-region.cities-right > li > a[title="Search San Antonio Pros"]                       |
      | .footer-region.cities-right > li > a[title="Search Tampa Pros"]                             |
  
      
