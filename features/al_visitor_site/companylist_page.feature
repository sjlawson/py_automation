Feature:

  @companyListPageCall @companyTreeDaily
  Scenario: Segment pagecall when CatNoGeo loads
    Given user is on the visitor site comnpanylist page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : Directory |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                         |
      | atTestOffer           |                                                                    |
      | cid                   |                                                                    |
      | name                  | Visitor : Directory                                                |
      | pageVersion           | Lullabot Redesign                                                  |
      | path                  | /companylist/                                                      |
      | referrer              |                                                                    |
      | search                |                                                                    |
      | title                 | Search Real Local Reviews, Home Services Guide &vert; Angie's List |
      | url                   |                                                                    |
      | userId                |                                                                    |
      | userType              | Visitor - New                                                      |


##### Header Tests #####

  @companyListPageHeaderJoinClick @companyTreeDaily @companyListHeaderRegression
  Scenario: User clicks on Header Join button on the Drupal CompanyList page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-join    |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | Visitor : Directory |
      | description      | Join link in header |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @companyListPageHeaderSignInClick @companyTreeDaily @companyListHeaderRegression
  Scenario: User clicks on Header Sign In button on the Drupal CompanyList page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-sign-in |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory                    |
      | description            | Sign In link in header            |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @companyListPageHeaderBusinessOwners @companyTreeDaily @companyListHeaderRegression
  Scenario: User clicks on the Business Owners button in the header on the Drupal Homepage
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: business-center |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory                    |
      | description            | Business Owners link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @companyListPageMoreJunk @companyTreeDaily @companyListHeaderRegression @geoCatDaily
  Scenario: User hovers then clicks on More NearMe in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Directory   |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : Directory                 |
      | description            | More menu category link in header   |
      | userId                 |                                  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"





##### Body Tests #####







##### Footer Tests #####



  @topcities @companylistTopCities @companyTreeDaily
  Scenario Outline: companylist Directory top cities
    Given user is on the visitor site comnpanylist page
      When a user clicks on "<pageLink>"
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value              |
      | description  | Top Cities link in footer |
      And the segment call contains parameters
      | prop_key         | prop_value                |
      | description      | Top Cities link in footer |
      | activityLocation | Visitor : Directory       |
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

