Feature:

  @companyListPageCall @companyTreeDaily
  Scenario: Segment pagecall when companylist page loads
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

  @companyListPageHeaderJoinClick @newHeaderA
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

  @companyListPageHeaderSignInClick @newHeaderA
  Scenario: User clicks on Header Sign In button on the Drupal CompanyList page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-sign-in |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | Sign In link in header            |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @companyListPageHeaderBusinessOwners @newHeaderA
  Scenario: User clicks on the Business Owners button in the header on the Drupal CompanyList page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: business-center |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | Business Owners link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @companyListPageMoreJunk @newHeaderA
  Scenario: User hovers then clicks on More NearMe in the header on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > ul > li:nth-child(4) > a       |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : Directory  |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Directory                |
      | description            | More menu category link in header  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @companyListPageLawnTreeService @newHeaderA
  Scenario: User hovers then clicks on Tree Service - More in the header on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Directory                   |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @companyListPageLawnTreeService @newHeaderA
  Scenario: User hovers then clicks on Articles & Advice menu view all articles link in header on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label |
      | click           | css: #articles-toggle > div > a                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value              |
      | activityLocation | Visitor : Directory   |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : Directory                                     |
      | description            | Articles & Advice menu view all articles link in header |
      | userId                 |                                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"



##### Body Tests #####

  @companyListPageBreadCrumbClick @newBody
  Scenario: User clicks on the breadcrumb link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-breadcrumb-block > div > div > div > a:nth-child(2) |
      | click           | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-breadcrumb-block > div > div > div > a:nth-child(2) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : Directory  |
      | description            | Breadcrumbs link     |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @companyListPageCatSearchSelectPlumbing @newBody
  Scenario: User clicks on the Choose A Cat link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #edit-category |
      | click           | css: #edit-category |
      | send_keys       | plumbing            |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div:nth-child(1) > div.geocat-category-select__selection-group |
      | click           | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div:nth-child(1) > div.geocat-category-select__selection-group |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : GeoCat |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : GeoCat  |
      | description            | Search bar submission     |
      | userId                 |                      |








  @companyListPageCatSearchPlumbing @newBody
  Scenario: User clicks on the Choose A Cat link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #edit-category |
      | click           | css: #edit-category |
      | send_keys       | plumbing            |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div:nth-child(1) > div.geocat-category-select__selection-group |
      | click           | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div:nth-child(1) > div.geocat-category-select__selection-group |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | css: #edit-location      |
      | click           | css: #edit-location      |
      | send_keys       | 49726                    |
      | move_to_element | css: #edit-geocat-submit |
      | click           | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : GeoCat |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : GeoCat  |
      | description            | Search bar submission     |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/plumbing.htm"









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

