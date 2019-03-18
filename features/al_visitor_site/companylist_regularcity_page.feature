Feature:

  Scenario: testing segment pagecall on city page
    Given user is on a visitor city page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : Geocat |
    Then the segment call contains parameters
      | prop_key                | prop_value                                                      |
      | name                    | Visitor : Geocat                                                |
      | atTestOffer             |                                                                 |
      | cid                     |                                                                 |
      | pageVersion             | GeoCat Tampa Redesign                                           |
      | path                    | /companylist/us/in/fishers/flooring.htm                         |
      | search                  |                                                                 |
      | userId                  |                                                                 |
      | userType                | Visitor - New                                                   |
      | title                   | Top 10 Best Fishers IN Flooring Installers &vert; Angie's List  |
      | categoryId              | 63                                                              |
      | homeAdvisorCategoryId   | 12032                                                           |
      | marketId                | 1                                                               |
      | srCtaDisplayed          | True                                                            |
      | srCtaVersion            | v2                                                              |
      | visitorPageCategory     | FLOORING SALES/INSTALLATION/REPAIR                              |
      | visitorPageGeo          | FISHERS IN                                                      |
      | visitorPageGeoCategory  | FISHERS IN - FLOORING SALES/INSTALLATION/REPAIR                 |
      | url                     |                                                                 |
      | visitorPageVerticalId   | 7051                                                            |
      | visitorPageVerticalName | Home Improvement                                                |


    Scenario: segment call on clicking the join link in city header
      Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params |
      | click         | #header-join  |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
      And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | Visitor : Geocat    |
      | description      | Join link in header |
      | userId           |                     |
      | visitorPageGeo   | FISHERS IN          |


    Scenario: segment call on clicking the HIW link in city header
      Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params       |
      | click         | .btnHiw |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                |
      | description  | How it Works link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                  |
      | description      | How it Works link in header |
      | activityLocation | Visitor : Geocat            |
      | userId           |                             |
      | visitorPageGeo   | FISHERS IN                  |


    Scenario: segment call on clicking the Sign In link in city header
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
      | activityLocation | Visitor : Geocat       |
      | userId           |                        |
      | visitorPageGeo   | FISHERS IN             |

 
    Scenario: segment call on clicking the FAQ link in city header
      Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params   |
      | click         | #faq |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | FAQ link in header |
      And the segment call contains parameters
      | prop_key         | prop_value         |
      | description      | FAQ link in header |
      | activityLocation | Visitor : Geocat   |
      | userId           |                    |
      | visitorPageGeo   | FISHERS IN         |


    Scenario: segment call on clicking the Press link in city header
      Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params |
      | click         | #press        |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                |
      | description  | In the Press link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                  |
      | description      | In the Press link in header |
      | activityLocation | Visitor : Geocat            |
      | userId           |                             |
      | visitorPageGeo   | FISHERS IN                  |


    Scenario: segment call on clicking the SC link in city header
      Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params |
      | click         | #articles     |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Solution Center link in header  |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Solution Center link in header |
      | activityLocation | Visitor : Geocat               |
      | userId           |                                |
      | visitorPageGeo   | FISHERS IN                     |
 

    Scenario: segment call on clicking the BC link in city header
      Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params       |
      | click         | #nav_business_owner |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
      | activityLocation | Visitor : Geocat               |
      | userId           |                                |
      | visitorPageGeo   | FISHERS IN                     |


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
      | activityLocation | Visitor : Geocat      |
      | userId           |                       |
      | visitorPageGeo   | FISHERS IN            |


    Scenario Outline: companylist city page cities
        Given user is on a visitor city page
        When a user clicks on "<pageLink>"
        Then a segment track call is sent for a unique field value pair
        | unique_field | unique_value              |
        | description  | Top Cities link in footer |
        And the segment call contains parameters
        | prop_key         | prop_value                |
        | description      | Top Cities link in footer |
        | activityLocation | Visitor : Geocat          |
        | userId           |                           |
      Examples: pageLink
      | pageLink                                                                                                        |
      | .footer-region.cities-left > li > a[title="Search New York Flooring Installers Pros"]                           |
      | .footer-region.cities-left > li > a[title="Search Houston Flooring Installers Pros"]                            |
      | .footer-region.cities-left > li > a[title="Search Chicago Flooring Installers Pros"]                            |
      | .footer-region.cities-left > li > a[title="Search Indianapolis Flooring Installers Pros"]                       |
      | .footer-region.cities-left > li > a[title="Search Boston Flooring Installers Pros"]                             |
      | .footer-region.cities-left > li > a[title="Search Atlanta Flooring Installers Pros"]                            |
      | .top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Flooring Installers Pros"]   |
      | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Flooring Installers Pros"] |
      | .footer-region.cities-right > li > a[title="Search Dallas Flooring Installers Pros"]                            |
      | .footer-region.cities-right > li > a[title="Search Pittsburgh Flooring Installers Pros"]                        |
      | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Minneapolis Flooring Installers Pros"] |
      | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Las Vegas Flooring Installers Pros"]   |
      | .footer-region.cities-right > li > a[title="Search San Antonio Flooring Installers Pros"]                       |
      | .footer-region.cities-right > li > a[title="Search Tampa Flooring Installers Pros"                              |

