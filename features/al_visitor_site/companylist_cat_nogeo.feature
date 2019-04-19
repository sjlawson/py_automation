@companylistTree
Feature:

  ## companyListCatNoGeoSegmentJoin
  Scenario: join button on CatNoGeo page
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key         | prop_value          |
    | description      | Join link in header |
    | activityLocation | Visitor : CatNoGeo  |
    | userId           |                     |


  ## test_companyListCatNoGeoHeaderLinkClick
  Scenario: segment call on clicking the HIW link in CatNoGeo header
    Given user is on a visitor site catnogeo page    
    When a user performs actions
    | action_method | action_params |
    | click         | .btnHiw       |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                |
    | description  | How it Works link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                  |
    | description      | How it Works link in header |
    | activityLocation | Visitor : CatNoGeo          |
    | userId           |                             |


  ## test_companyListCatNoGeoHeaderSignInClick
  Scenario: segment call on clicking the Sign In link in CatNoGeo header
    Given user is on a visitor site catnogeo page    
    When a user performs actions
    | action_method | action_params   |
    | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | Sign In link in header |
    And the segment call contains parameters
    | prop_key         | prop_value             |
    | description      | Sign In link in header |
    | activityLocation | Visitor : CatNoGeo     |
    | userId           |                        |
  

  ## test_companyListCatNoGeoHeaderFAQClick
  Scenario: segment call on clicking the FAQ link in CatNoGeo header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params   |
    | click         | #faq |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | FAQ link in header |
    And the segment call contains parameters
    | prop_key         | prop_value         |
    | description      | FAQ link in header |
    | activityLocation | Visitor : CatNoGeo |
    | userId           |                    |

  ## test_companyListCatNoGeoHeaderITPClick
  Scenario: segment call on clicking the Press link in CatNoGeo header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params |
    | click         | #press        |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                |
    | description  | In the Press link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                  |
    | description      | In the Press link in header |
    | activityLocation | Visitor : CatNoGeo          |
    | userId           |                             |


  ## test_companyListCatNoGeoHeaderScClick
  Scenario: segment call on clicking the SC link in CatNoGeo header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params |
    | click         | #articles     |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Solution Center link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Solution Center link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |


  ## test_companyListCatNoGeoHeaderBcClick
  Scenario: segment call on clicking the BC link in CatNoGeo header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params       |
    | click         | #nav_business_owner |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Business Owners link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |


  ## test_companyListCatNoGeoFooterJoinClick
  Scenario: segment call on clicking the Join link in CatNoGeo footer
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params |
    | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value          |
    | description  | Join button in footer |
    And the segment call contains parameters
    | prop_key         | prop_value            |
    | description      | Join button in footer |
    | activityLocation | Visitor : CatNoGeo    |
    | userId           |                       |


  ## test_companyListCatNoGeo_topCities
  @topcities @catnogeo_topcities
  Scenario Outline: companylist CatNoGeo top cities
    Given user is on a visitor site catnogeo page
    When a user clicks on "<pageLink>"
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value              |
    | description  | Top Cities link in footer |
    And the segment call contains parameters
    | prop_key         | prop_value                |
    | description      | Top Cities link in footer |
    | activityLocation | Visitor : CatNoGeo        |
    | userId           |                           |
    Examples: pageLink
    | pageLink                                                                                                   |
    | .footer-region.cities-left > li > a[title="Search for New York Home Inspectors"]                           |
    | .footer-region.cities-left > li > a[title="Search for Houston Home Inspectors"]                            |
    | .footer-region.cities-left > li > a[title="Search for Chicago Home Inspectors"]                            |
    | .footer-region.cities-left > li > a[title="Search for Indianapolis Home Inspectors"]                       |
    | .footer-region.cities-left > li > a[title="Search for Boston Home Inspectors"]                             |
    | .footer-region.cities-left > li > a[title="Search for Atlanta Home Inspectors"]                            |
    | .top-cities > ul > div.footer-region.cities-left > li > a[title="Search for Cincinnati Home Inspectors"]   |
    | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search for Los Angeles Home Inspectors"] |
    | .footer-region.cities-right > li > a[title="Search for Dallas Home Inspectors"]                            |
    | .footer-region.cities-right > li > a[title="Search for Pittsburgh Home Inspectors"]                        |
    | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search for Minneapolis Home Inspectors"] |
    | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search for Las Vegas Home Inspectors"]   |
    | .footer-region.cities-right > li > a[title="Search for San Antonio Home Inspectors"]                       |
    | .footer-region.cities-right > li > a[title="Search for Tampa Home Inspectors"]                             |
