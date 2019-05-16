Feature:

  @statePagePageCall
  Scenario: testing segment pagecall on state page
    Given user is on a visitor state page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : US : State|
    Then the segment call contains parameters
      | prop_key    | prop_value                                           |
      | name        | Visitor : US : State                                 |
      | atTestOffer |                                                      |
      | cid         |                                                      |
      | pageVersion | Lullabot Redesign                                    |
      | path        | /companylist/us/mi/                                  |
      | search      |                                                      |
      | userId      |                                                      |
      | userType    |                                                      |
      | title       | Search Home Services in Michigan &vert; Angie's List |
      | pageState   | MI                                                   |
      | referrer    |                                                      |


##### Header Tests #####


    @statePageHeaderJoin @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the join link in the header
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
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

    @statePageHeaderSignIn @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Sign In link in the header
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
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

    @statePageHeaderBusinessOwners @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Business Owners link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method | action_params       |
      | click         | #business-center    |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
      | activityLocation | Visitor : US : State           |
      | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

    @statePageHeaderInteriorDrywall @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Interior - Plumbing link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                            |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : US : State                    |
      | description            | Interior menu category link in header   |
      | userId                 |                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/plumbing.htm"

    @statePageHeaderExteriorRoofing @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Exterior - Roofing link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label |
      | click           | css: #exterior-toggle > ul > li:nth-child(10) > a  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : US : State                    |
      | description            | Exterior menu category link in header   |
      | userId                 |                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/roofing.htm"

    @statePageHeaderExteriorViewAll @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Exterior - View All Categories link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label |
      | click           | css: #exterior-toggle > div > a                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                                         |
      | activityLocation       | Visitor : US : State                               |
      | description            | Exterior menu view all categories link in header   |
      | userId                 |                                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @statePageHeaderLawnViewAll @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Lawn & Garden - View All Categories link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                             |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | css: #lawn-toggle > div > a                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : US : State                                    |
      | description            | Lawn & Garden menu view all categories link in header   |
      | userId                 |                                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @statePageHeaderMoreViewAll @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the More - View All Categories link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                             |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | css: #more-toggle > div:nth-child(5) > a                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                                         |
      | activityLocation       | Visitor : US : State                               |
      | description            | More menu view all categories link in header       |
      | userId                 |                                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @statePageHeaderArticles @statePageHeader @companyListTreeHeader
    Scenario: State Page clicking the Articles - View All Arts link in the header
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label  |
      | click           | css: #articles-toggle > div > a                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : US : State                                    |
      | description            | Articles & Advice menu view all articles link in header |
      | userId                 |                                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"



##### Body Test #####



    @statePageBodyBreadCrumb @statePageBody @companyListTreeBody
    Scenario: State Page clicking the Breadcrumbs link in the Body
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params                                                                                                                     |
      | move_to_element | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-breadcrumb-block > div > div > div > a:nth-child(2)  |
      | click           | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-breadcrumb-block > div > div > div > a:nth-child(2)  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : State   |
    And the segment call contains parameters
      | prop_key               | prop_value            |
      | activityLocation       | Visitor : US : State  |
      | description            | Breadcrumbs link      |
      | userId                 |                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @statePageBodyCatSelect @statePageBody @companyListTreeBody
    Scenario: State Page clicking a category in the Category Search area in the Body (Dock Search)
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #edit-category  |
      | click           | css: #edit-category  |
      | send_keys       | dock                 |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                                                                                                   |
      | move_to_element | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div > div.geocat-category-select__selection-group > div  |
      | click           |                                                                                                                                                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : GeoCat       |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : GeoCat                        |
      | categorySelected       | Dock Building & Repair                  |
      | description            | Category selected from auto suggestion  |
      | marketId               |                                         |
      | userId                 |                                         |
      | visitorPageCategory    |                                         |
      | visitorPageGeo         |                                         |
      | visitorPageGeoCategory |                                         |

    @statePageBodyCatSearchWithPostalCode @statePageBody @companyListTreeBody
    Scenario: State Page clicking the Category Search link in the Body (Dock Search)
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #edit-category  |
      | click           | css: #edit-category  |
      | send_keys       | dock                 |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                                                                                                   |
      | move_to_element | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div > div.geocat-category-select__selection-group > div  |
      | click           |                                                                                                                                                                 |
      | click           | css: #edit-location                                                                                                                                             |
      | send_keys       | 49726                                                                                                                                                           |
      | click           | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : GeoCat       |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : GeoCat           |
      | categorySearched       | Dock Building & Repair     |
      | description            | Search bar submission      |
      | locationSearched       | 49726                      |
      | userId                 |                            |
      | visitorPageCategory    |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/dock-building-repair.htm"

    @statePageBodyCatSearchWithCityState @statePageBody @companyListTreeBody
    Scenario: State Page clicking the Category Search link in the Body (Dock Search)
    Given user is on a visitor state page
      When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #edit-category  |
      | click           | css: #edit-category  |
      | send_keys       | dock                 |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                                                                                                   |
      | move_to_element | css: #al-geocat-filters-form > div > nav > div.geocat-category-select > div.autocomplete-suggestions > div > div.geocat-category-select__selection-group > div  |
      | click           |                                                                                                                                                                 |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #edit-location                                                                                                               |
      | click           | css: #edit-location                                                                                                               |
      | send_keys       | Drummond Island                                                                                                                   |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #al-geocat-filters-form > div > nav > div.geocat-location-select > div > div |
      | click           | css: #al-geocat-filters-form > div > nav > div.geocat-location-select > div > div |
      | move_to_element | css: #edit-geocat-submit |
      | click           | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : GeoCat       |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : GeoCat           |
      | categorySearched       | Dock Building & Repair     |
      | description            | Search bar submission      |
      | locationSearched       |                            |
      | userId                 |                            |
      | visitorPageCategory    |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/dock-building-repair.htm"

  @statePageBodyTopCityClick @statePageBody @companyListTreeBody
    Scenario: State Page clicking a Top City link in the Body
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                                                                                                         |
      | move_to_element | css: #block-system-main > div > div.row.greyback.row--sub-header > div > div:nth-child(1) > ul > li:nth-child(12) > a |
      | click           | css: #block-system-main > div > div.row.greyback.row--sub-header > div > div:nth-child(1) > ul > li:nth-child(12) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/us/mi/traverse-city/"

  @statePageBodyAllCityClick @statePageBody @companyListTreeBody
    Scenario: State Page clicking All City link in the Body
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                                                                                                          |
      | move_to_element | css: #block-system-main > div > div.row.greyback.row--sub-header > div > div:nth-child(2) > ul > li:nth-child(181) > a |
      | click           | css: #block-system-main > div > div.row.greyback.row--sub-header > div > div:nth-child(2) > ul > li:nth-child(181) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/"



##### Footer Tests #####

  @statePageFooterTopCityNYC @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer NYC top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/"


  @statePageFooterTopCityHouston @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Houston top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/"


  @statePageFooterTopCityChi @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Chicago top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/"


  @statePageFooterTopCityIndy @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Indianapolis top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/"


  @statePageFooterTopCityBos @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Boston top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/"

  @statePageFooterTopCityATL @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Atlanta top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/"

  @statePageFooterTopCityCinci @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Cincinnati top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/"

  @statePageFooterTopCityLA @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Los Angeles top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/"

  @statePageFooterTopCityDal @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Dallas top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/"

  @statePageFooterTopCityPitt @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Pittsburgh top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/"

  @statePageFooterTopCityMinn @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Minneapolis top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/"

  @statePageFooterTopCityLV @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Las Vegas top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/"

  @statePageFooterTopCitySA @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer San Antonio top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/"

  @statePageFooterTopCityTampa @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Tampa top city link on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : State            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/"

  @statePageFooterSegmentJoinForFree @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Join For Free icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : State               |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @statePageFooterSegmentCompanyList @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Company List icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : US : State                    |
      | description            | Find Local Businesses link in footer   |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @statePageFooterSegmentNearMe @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Near Me icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : State               |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @statePageFooterSegmentHowItWorks @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left How It Works icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : State               |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @statePageFooterSegmentSolutionCenter @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Solution Center icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : State               |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @statePageFooterSegmentPhotoGalleries @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Photos icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : State               |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @statePageFooterSegmentVideos @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Videos icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : State               |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @statePageFooterSegmentAnswers @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Answers icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : US : State         |
      | description            | Answers link in footer      |
      | userId                 |                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @statePageFooterSegmentBusinessOwners @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Business Owners icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : US : State                |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @statePageFooterSegmentInvestorRelations @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Investor Relations icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : US : State                |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @statePageFooterSegmentAboutUs @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left About Us icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : US : State                |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @statePageFooterSegmentCareers @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Careers icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : US : State        |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @statePageFooterSegmentFAQ @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left FAQ icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : US : State  |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @statePageFooterSegmentContactUs @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Contact Us icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : US : State        |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @statePageFooterSegmentJoin @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Join icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : US : State        |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @statePageFooterSegmentTermsOfUse @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer TermsOfUse icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : US : State          |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @statePageFooterSegmentPrivacyPolicy @statePageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Privacy Policy icon on Drupal Company List Page
    Given user is on a visitor state page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : State |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : US : State           |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |