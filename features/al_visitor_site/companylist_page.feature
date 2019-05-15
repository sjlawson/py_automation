@allCP
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
  Scenario: User clicks on the Choose A Category link in the body and selects Plumbing - Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #edit-category |
      | click           | css: #edit-category |
      | send_keys       | plumbing            |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                                                                                                         |
      | move_to_element | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div:nth-child(1) > div.geocat-category-select__selection-group |
      | click           | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div:nth-child(1) > div.geocat-category-select__selection-group |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : GeoCat   |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : GeoCat                       |
      | description            | Category selected from auto suggestion |
      | userId                 |                                        |

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
      | action_method   | action_params                                                                                                                                                         |
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
      | unique_field | unique_value           |
      | activityLocation | Visitor : GeoCat   |
    And the segment call contains parameters
      | prop_key               | prop_value            |
      | activityLocation       | Visitor : GeoCat      |
      | description            | Search bar submission |
      | userId                 |                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/plumbing.htm"

  @companyListPageSeeAllCatClick @newBody
  Scenario: User clicks on the See All Categories link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #geocat-category-select-all |
      | click           | css: #geocat-category-select-all |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | activityLocation | Visitor : GeoCat |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : GeoCat                 |
      | description            | See All Categories link clicked  |
      | userId                 |                                  |

  @companyListPageSeeAllCat @newBody
  Scenario: User clicks on the See All Categories link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #geocat-category-select-all |
      | click           | css: #geocat-category-select-all |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                                                                                              |
      | move_to_element | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-al-geocat-filters > div > div > div:nth-child(1) > ul > li:nth-child(4) > a   |
      | click           | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-al-geocat-filters > div > div > div:nth-child(1) > ul > li:nth-child(4) > a   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | activityLocation | Visitor : GeoCat |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : GeoCat                            |
      | categorySelected       | Cleaning                                    |
      | description            | Category selected from all categories list  |
      | userId                 |                                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | css: #edit-location      |
      | click           | css: #edit-location      |
      | send_keys       | 49726                    |
      | move_to_element | css: #edit-geocat-submit |
      | click           | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : GeoCat   |
    And the segment call contains parameters
      | prop_key               | prop_value            |
      | activityLocation       | Visitor : GeoCat      |
      | description            | Search bar submission |
      | userId                 |                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/cleaning.htm"

  @companyListPageCatClickAsbestos @newBody
  Scenario: User clicks on the category link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                                                                                                                                                                                  |
      | move_to_element | css: #block-system-main > div > div.row.greyback.row--sub-header > div > section.geocat-cities-list__container.geocat-cities-list__container--static-top-categories > ul > li:nth-child(5) > a |
      | click           | css: #block-system-main > div > div.row.greyback.row--sub-header > div > section.geocat-cities-list__container.geocat-cities-list__container--static-top-categories > ul > li:nth-child(5) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/asbestos-removal.htm"

  @companyListPageCatClickGarage @newBody
  Scenario: User clicks on the category link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                                                                                                                                                                                   |
      | move_to_element | css: #block-system-main > div > div.row.greyback.row--sub-header > div > section.geocat-cities-list__container.geocat-cities-list__container--static-top-categories > ul > li:nth-child(48) > a |
      | click           | css: #block-system-main > div > div.row.greyback.row--sub-header > div > section.geocat-cities-list__container.geocat-cities-list__container--static-top-categories > ul > li:nth-child(48) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/garage-doors.htm"

  @companyListPageStateClick @newBody
  Scenario: User clicks on the state link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #block-system-main > div > div.row.greyback.row--sub-header > div > div > ul > li:nth-child(30) > a |
      | click           | css: #block-system-main > div > div.row.greyback.row--sub-header > div > div > ul > li:nth-child(30) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/us/nh/"

  @companyListPageMajorMarketClick @newBody
  Scenario: User clicks on the major market link in the body on the Drupal CompanyList Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                                                                                                                                                                                                          |
      | move_to_element | css: #block-system-main > div > div.row.greyback.row--sub-header > div > section.geocat-cities-list__container.geocat-cities-list__container--major-markets.geocat-major-markets-processed > ul > li:nth-child(62) > a |
      | click           | css: #block-system-main > div > div.row.greyback.row--sub-header > div > section.geocat-cities-list__container.geocat-cities-list__container--major-markets.geocat-major-markets-processed > ul > li:nth-child(62) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/tucson/"


##### Footer Tests #####

  @companyListPageFooterTopCityNYC @newFooter
  Scenario: User clicks on the footer NYC top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/"


  @companyListPageFooterTopCityHouston @newFooter
  Scenario: User clicks on the footer Houston top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/"


  @companyListPageFooterTopCityChi @newFooter
  Scenario: User clicks on the footer Chicago top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/"


  @companyListPageFooterTopCityIndy @newFooter
  Scenario: User clicks on the footer Indianapolis top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/"


  @companyListPageFooterTopCityBos @newFooter
  Scenario: User clicks on the footer Boston top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/"

  @companyListPageFooterTopCityATL @newFooter
  Scenario: User clicks on the footer Atlanta top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/"

  @companyListPageFooterTopCityCinci @newFooter
  Scenario: User clicks on the footer Cincinnati top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/"

  @companyListPageFooterTopCityLA @newFooter
  Scenario: User clicks on the footer Los Angeles top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/"

  @companyListPageFooterTopCityDal @newFooter
  Scenario: User clicks on the footer Dallas top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/"

  @companyListPageFooterTopCityPitt @newFooter
  Scenario: User clicks on the footer Pittsburgh top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/"

  @companyListPageFooterTopCityMinn @newFooter
  Scenario: User clicks on the footer Minneapolis top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/"

  @companyListPageFooterTopCityLV @newFooter
  Scenario: User clicks on the footer Las Vegas top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/"

  @companyListPageFooterTopCitySA @newFooter
  Scenario: User clicks on the footer San Antonio top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/"

  @companyListPageFooterTopCityTampa @newFooter
  Scenario: User clicks on the footer Tampa top city link on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Directory            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/"

  @companyListPageFooterSegmentJoinForFree @newFooter
  Scenario: User clicks on the footer-left Join For Free icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @companyListPageFooterSegmentCompanyList @newFooter
  Scenario: User clicks on the footer-left Company List icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : Directory                    |
      | description            | Find Local Businesses link in footer   |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @companyListPageFooterSegmentNearMe @newFooter
  Scenario: User clicks on the footer-left Near Me icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @companyListPageFooterSegmentHowItWorks @newFooter
  Scenario: User clicks on the footer-left How It Works icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @companyListPageFooterSegmentSolutionCenter @newFooter
  Scenario: User clicks on the footer-left Solution Center icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @companyListPageFooterSegmentPhotoGalleries @newFooter
  Scenario: User clicks on the footer-left Photos icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @companyListPageFooterSegmentVideos @newFooter
  Scenario: User clicks on the footer-left Videos icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Directory               |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @companyListPageFooterSegmentAnswers @newFooter
  Scenario: User clicks on the footer-left Answers icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : Directory         |
      | description            | Answers link in footer      |
      | userId                 |                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @companyListPageFooterSegmentBusinessOwners @newFooter
  Scenario: User clicks on the footer-left Business Owners icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Directory                |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @companyListPageFooterSegmentInvestorRelations @newFooter
  Scenario: User clicks on the footer-left Investor Relations icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Directory                |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @companyListPageFooterSegmentAboutUs @newFooter
  Scenario: User clicks on the footer-left About Us icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Directory                |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @companyListPageFooterSegmentCareers @newFooter
  Scenario: User clicks on the footer-left Careers icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Directory        |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @companyListPageFooterSegmentFAQ @newFooter
  Scenario: User clicks on the footer-left FAQ icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : Directory  |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @companyListPageFooterSegmentContactUs @newFooter
  Scenario: User clicks on the footer-left Contact Us icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Directory        |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @homePageFooterSegmentJoin @newFooter
  Scenario: User clicks on the footer-right Join icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Directory        |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @companyListPageFooterSegmentTermsOfUse @newFooter
  Scenario: User clicks on the footer TermsOfUse icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : Directory          |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @companyListPageFooterSegmentPrivacyPolicy @newFooter
  Scenario: User clicks on the footer Privacy Policy icon on Drupal Company List Page
    Given user is on the visitor site comnpanylist page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : Directory           |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |

