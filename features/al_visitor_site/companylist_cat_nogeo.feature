@companylistTree
Feature:

  ## companyListCatNoGeoSegmentJoin
  Scenario: join button on cat no geo page
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
  Scenario: segment call on clicking the BC link in the header
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
  @topcities
  Scenario Outline: companylist top cities
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
    | pageLink                                                                                                    |
    | .footer-region.cities-left > li > a[title="Search New York Home Inspectors Pros"]                           |
    | .footer-region.cities-left > li > a[title="Search Houston Home Inspectors Pros"]                            |
    | .footer-region.cities-left > li > a[title="Search Chicago Home Inspectors Pros"]                            |
    | .footer-region.cities-left > li > a[title="Search Indianapolis Home Inspectors Pros"]                       |
    | .footer-region.cities-left > li > a[title="Search Boston Home Inspectors Pros"]                             |
    | .footer-region.cities-left > li > a[title="Search Atlanta Home Inspectors Pros"]                            |
    | .top-cities > ul > div.footer-region.cities-left > li > a[title="Search Cincinnati Home Inspectors Pros"]   |
    | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Los Angeles Home Inspectors Pros"] |
    | .footer-region.cities-right > li > a[title="Search Dallas Home Inspectors Pros"]                            |
    | .footer-region.cities-right > li > a[title="Search Pittsburgh Home Inspectors Pros"]                        |
    | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Minneapolis Home Inspectors Pros"] |
    | .top-cities > ul > div.footer-region.cities-right > li > a[title="Search Las Vegas Home Inspectors Pros"]   |
    | .footer-region.cities-right > li > a[title="Search San Antonio Home Inspectors Pros"]                       |
    | .footer-region.cities-right > li > a[title="Search Tampa Home Inspectors Pros"]                             |
