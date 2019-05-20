@companyListTree
Feature:

  @geoCatPageCall
  Scenario: Segment pagecall when GeoCat(Denver Roofing) loads
    Given user is on a visitor site geocat page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | pageVersion         | GeoCat Tampa Redesign |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                 |
      | atTestOffer           |                                                            |
      | categoryId            | 112                                                        |
      | cid                   |                                                            |
      | homeAdvisorCategoryId | 12061                                                      |
      | marketId              | 27                                                         |
      | name                  | Visitor : Geocat                                           |
      | pageVersion           | GeoCat Tampa Redesign                                      |
      | path                  | /companylist/denver/roofing.htm                            |
      | referrer              |                                                            |
      | search                |                                                            |
      | seoTestName           |                                                            |
      | srCtaDisplayed        | true                                                       |
      | srCtaVersion          | v2                                                         |
      | title                 | Top 10 Best Denver CO Roofing Contractors &vert; Angie's List   |
      | url                   |                                                            |
      | userId                |                                                            |
      | userType              | Visitor - New                                              |
      | visitorPageCategory   | ROOFING                                                    |
      | visitorPageGeo        | DENVER                                                     |
      | visitorPageGeoCategory  | DENVER - ROOFING                                         |
      | visitorPageVerticalId   | 7051                                                     |
      | visitorPageVerticalName | Home Improvement                                         |

##### Header Tests #####


  @geoCatHeaderJoin @geoCatHeader @companyListTreeHeader
  Scenario: The Join button is clicked on GeoCat(Denver Roofing) page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key            | prop_value          |
    | description         | Join link in header |
    | activityLocation    | Visitor : Geocat    |
    | userId              |                     |
    | visitorPageCategory | Roofing             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @headerSignInGeoCat @geoCatHeader @companyListTreeHeader
  Scenario: The Sign In link is clicked on the GeoCat(Denver Roofing) header
    Given user is on a visitor site geocat page
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
    | visitorPageCategory | Roofing             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member"

  @headerBcGeoCat @geoCatHeader @companyListTreeHeader
  Scenario: The Business Center link is clicked on the GeoCat(Denver Roofing) header
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params       |
    | click         | #business-center    |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Business Owners link in header |
    | activityLocation | Visitor : Geocat               |
    | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @geoCatHeaderInteriorApplianceRepair @geoCatHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Appliance Repair in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @geoCatHeaderInteriorHouseCleaning @geoCatHeader @companyListTreeHeader
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/house-cleaning.htm"

  @geoCatHeaderExteriorPainting @geoCatHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Exterior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/exterior-painting.htm"

  @geoCatHeaderExteriorViewAllCats @geoCatHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Exterior View All in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Exterior menu view all categories link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"


  @geoCatHeaderLawnGardenDecks @geoCatHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Lawn & Garden and then Decks in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | css: #lawn-toggle > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Lawn & Garden menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/decks-and-porches.htm"


  @geoCatHeaderMoreNearMe @geoCatHeader @companyListTreeHeader
  Scenario: User hovers then clicks on More NearMe in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : Geocat                 |
      | description            | Near Me link in desktop header   |
      | userId                 |                                  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @geoCatHeaderArticlesAdviceElectrical @geoCatHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Articles & Advice and then Electrical in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #articles-toggle > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Articles & Advice menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/electrical/"


##### Body Tests #####

  @geoCatSegmentSRNoZip @geoCatBody @companyListTreeHeader
  Scenario: User is on a GeoCat Page and selects the SR flow without any postal code.
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params   |
    | click         | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                      |
    | description  | Service Request Flow entry button |
    And the segment call contains parameters
    | prop_key         | prop_value                        |
    | description      | Service Request Flow entry button |
    | activityLocation | Visitor : Geocat                  |
    | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode="

  @geoCatSegmentSRWithZip @geoCatBody @companyListTreeHeader
  Scenario: SR CTA button click on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method   | action_params   |
    | move_to_element | #ha-lead-zip    |
    | click           | #ha-lead-zip    |
    | send_keys       | 90068           |
    | click           | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                      |
    | description  | Service Request Flow entry button |
    And the segment call contains parameters
    | prop_key         | prop_value                        |
    | description      | Service Request Flow entry button |
    | activityLocation | Visitor : Geocat                  |
    | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode=90068"
    
    @geoCatBodySeeAllCategoriesSearch @geoCatBody @companyListTreeHeader
    Scenario: User clicks on See All Categories and selects Cleaning  on GeoCat page
      Given user is on a visitor site geocat page
      When a user performs actions
    | action_method   | action_params                 |
    | move_to_element | #geocat-category-select-all   |
    | click           | #geocat-category-select-all   |
    | click           | #block-system-main > div > div:nth-child(1) > div.panel-pane.pane-al-geocat-filters.panel-pane.pane-al-geocat-filters.row.greyback.row--sub-header > div > div > div:nth-child(1) > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                      |
    | description  | Category selected from all categories list |
    And the segment call contains parameters
    | prop_key               | prop_value                                 |
    | description            | Category selected from all categories list |
    | activityLocation       | Visitor : GeoCat                           |
    | userId                 |                                            |
    | categorySelected       | Cleaning                                   |
    | marketId               |                                            |
    | visitorPageCategory    | ROOFING                                    |
    | visitorPageGeo         | DENVER                                     |
    | visitorPageGeoCategory | DENVER - ROOFING                           |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/denver/cleaning.htm"

    @geoCatBodyEditLocation @geoCatBody @companyListTreeHeader
    Scenario: User clicks on Location Field by Category and types in Aurora on GeoCat page
      Given user is on a visitor site geocat page
      When the user clears text field with selector "id: edit-location"
      When a user performs actions
      | action_method   | action_params                                            |
      | move_to_element | id: edit-location                                        |
      | click           |                                                          |
      | send_keys       | Aurora                                                   |
      And a user performs actions
      | action_method   | action_params                                            |
      | move_to_element | css: div.geocat-location-select > div > div:nth-child(1) |
      | click           |                                                          |
      | move_to_element | css: #edit-geocat-submit > i                             |
      | click           |                                                          |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                               |
      | description  | Search bar submission |
      And the segment call contains parameters
      | prop_key               | prop_value            |
      | description            | Search bar submission |
      | activityLocation       | Visitor : GeoCat      |
      | userId                 |                       |
      | locationSearched       | Aurora, CO            |
      | manualTextSearched     | Roofing               |
      | marketID               |                       |
      | visitorPageCategory    | ROOFING               |
      | visitorPageGeo         | DENVER                |
      | visitorPageGeoCategory | DENVER - ROOFING      |
      And we wait "1" seconds for the next page to load
      And the landing URL contains ".angieslist.com/companylist/us/co/aurora/roofing.htm"


##### Footer Tests #####

  @companyListPageFooterTopCityNYC @companyListPageFooter @companyListTreeFooter
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


  @companyListPageFooterTopCityHouston @companyListPageFooter @companyListTreeFooter
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


  @companyListPageFooterTopCityChi @companyListPageFooter @companyListTreeFooter
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


  @companyListPageFooterTopCityIndy @companyListPageFooter @companyListTreeFooter
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


  @companyListPageFooterTopCityBos @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityATL @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityCinci @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityLA @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityDal @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityPitt @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityMinn @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityLV @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCitySA @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterTopCityTampa @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentJoinForFree @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentCompanyList @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentNearMe @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentHowItWorks @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentSolutionCenter @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentPhotoGalleries @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentVideos @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentAnswers @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentBusinessOwners @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentInvestorRelations @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentAboutUs @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentCareers @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentFAQ @companyListPageFooter @companyListTreeFooter
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


  @companyListPageFooterSegmentContactUs @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentJoin @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentTermsOfUse @companyListPageFooter @companyListTreeFooter
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

  @companyListPageFooterSegmentPrivacyPolicy @companyListPageFooter @companyListTreeFooter
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
