Feature:

  @cityPagePageCall
  Scenario: testing segment pagecall on state page
    Given user is on a visitor city page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value        |
      | name         | Visitor : US : City |
    Then the segment call contains parameters
      | prop_key    | prop_value                                                             |
      | name        | Visitor : US : City                                                    |
      | atTestOffer |                                                                        |
      | pageCity    | Drummond Island, MI                                                    |
      | pageVersion | Lullabot Redesign                                                      |
      | path        | /companylist/us/mi/drummond-island/                                    |
      | referrer    |                                                                        |
      | search      |                                                                        |
      | title       | Drummond Island, Michigan Local Home Service Pros &vert; Angie's List  |
      | userId      |                                                                        |
      | userType    |                                                                        |


##### Header Tests #####


    @cityPageHeaderJoin @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the join link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params |
      | click         | #header-join  |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
      And the segment call contains parameters
      | prop_key         | prop_value           |
      | activityLocation | Visitor : US : City  |
      | description      | Join link in header  |
      | userId           |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

    @cityPageHeaderSignIn @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the Sign In link in the header
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
      | activityLocation | Visitor : US : City    |
      | userId           |                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

    @cityPageHeaderBusinessOwners @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the Business Owners link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method | action_params       |
      | click         | #business-center    |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
      And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
      | activityLocation | Visitor : US : City            |
      | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

    @cityPageHeaderInteriorDrywall @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the Interior - Plumbing link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                            |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : City    |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : US : City                     |
      | description            | Interior menu category link in header   |
      | userId                 |                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/plumbing.htm"

    @cityPageHeaderExteriorRoofing @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the Exterior - Roofing link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label |
      | click           | css: #exterior-toggle > ul > li:nth-child(10) > a  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : City    |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : US : City                     |
      | description            | Exterior menu category link in header   |
      | userId                 |                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/roofing.htm"

    @cityPageHeaderExteriorViewAll @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the Exterior - View All Categories link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label |
      | click           | css: #exterior-toggle > div > a                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : City    |
    And the segment call contains parameters
      | prop_key               | prop_value                                         |
      | activityLocation       | Visitor : US : City                                |
      | description            | Exterior menu view all categories link in header   |
      | userId                 |                                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @cityPageHeaderLawnViewAll @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the Lawn & Garden - View All Categories link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params                                             |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | css: #lawn-toggle > div > a                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : City    |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : US : City                                     |
      | description            | Lawn & Garden menu view all categories link in header   |
      | userId                 |                                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @cityPageHeaderMoreViewAll @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the More - View All Categories link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params                                             |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | css: #more-toggle > div:nth-child(5) > a                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : City    |
    And the segment call contains parameters
      | prop_key               | prop_value                                         |
      | activityLocation       | Visitor : US : City                                |
      | description            | More menu view all categories link in header       |
      | userId                 |                                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @cityPageHeaderArticles @cityPageHeader @companyListTreeHeader
    Scenario: State Page clicking the Articles - View All Arts link in the header
    Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label  |
      | click           | css: #articles-toggle > div > a                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value          |
      | activityLocation | Visitor : US : City   |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : US : City                                     |
      | description            | Articles & Advice menu view all articles link in header |
      | userId                 |                                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"



##### Body Test #####



    @cityPageBodyBreadCrumb @cityPageBody @companyListTreeBody
    Scenario: State Page clicking the Breadcrumbs link in the Body
    Given user is on a visitor city page
      When a user performs actions
      | action_method   | action_params                                                                                                                     |
      | move_to_element | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-breadcrumb-block > div > div > div > a:nth-child(2)  |
      | click           | css: #block-system-main > div > div.container.clearfix > div.panel-pane.pane-breadcrumb-block > div > div > div > a:nth-child(2)  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : US : City    |
    And the segment call contains parameters
      | prop_key               | prop_value            |
      | activityLocation       | Visitor : US : City   |
      | description            | Breadcrumbs link      |
      | userId                 |                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

    @cityPageBodyCatSelect @cityPageBody @companyListTreeBody
    Scenario: State Page clicking a category in the Category Search area in the Body (Dock Search)
    Given user is on a visitor city page
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

  @cityPageBodyCatClick @cityPageBody @companyListTreeBody
    Scenario: State Page clicking a Top City link in the Body
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                                                                                                                                                                                      |
      | move_to_element | css: #block-system-main > div > div.max-panel > section > ul > li.geocat-choose-a-category__list-item.al-dropdown.js-active.initial > div > div > section:nth-child(1) > ul > li:nth-child(48) > a |
      | click           | css: #block-system-main > div > div.max-panel > section > ul > li.geocat-choose-a-category__list-item.al-dropdown.js-active.initial > div > div > section:nth-child(1) > ul > li:nth-child(48) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains "/companylist/us/mi/drummond-island/excavating.htm"

  @cityPageBodyPopularProjectsClick @cityPageBody @companyListTreeBody
    Scenario: State Page clicking Popular Projects link in the Body
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                                                                                                                                                                                      |
      | move_to_element | css: #block-system-main > div > div.max-panel > section > ul > li.geocat-choose-a-category__list-item.al-dropdown.js-active.initial > div > div > section:nth-child(2) > ul > li:nth-child(15) > a |
      | click           | css: #block-system-main > div > div.max-panel > section > ul > li.geocat-choose-a-category__list-item.al-dropdown.js-active.initial > div > div > section:nth-child(2) > ul > li:nth-child(15) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/t/us/mi/drummond-island/deliver-river-rock.htm"



##### Footer Tests #####

  @cityPageFooterTopCityNYC @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer NYC top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/"


  @cityPageFooterTopCityHouston @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Houston top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/"


  @cityPageFooterTopCityChi @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Chicago top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/"


  @cityPageFooterTopCityIndy @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Indianapolis top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/"


  @cityPageFooterTopCityBos @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Boston top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/"

  @cityPageFooterTopCityATL @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Atlanta top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/"

  @cityPageFooterTopCityCinci @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Cincinnati top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/"

  @cityPageFooterTopCityLA @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Los Angeles top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/"

  @cityPageFooterTopCityDal @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Dallas top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/"

  @cityPageFooterTopCityPitt @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Pittsburgh top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/"

  @cityPageFooterTopCityMinn @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Minneapolis top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/"

  @cityPageFooterTopCityLV @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Las Vegas top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/"

  @cityPageFooterTopCitySA @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer San Antonio top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/"

  @cityPageFooterTopCityTampa @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Tampa top city link on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : US : City            |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/"

  @cityPageFooterSegmentJoinForFree @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Join For Free icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : City               |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @cityPageFooterSegmentCompanyList @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Company List icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : US : City                    |
      | description            | Find Local Businesses link in footer   |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @cityPageFooterSegmentNearMe @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Near Me icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : City               |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @cityPageFooterSegmentHowItWorks @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left How It Works icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : City               |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @cityPageFooterSegmentSolutionCenter @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Solution Center icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : City               |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @cityPageFooterSegmentPhotoGalleries @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Photos icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : City               |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @cityPageFooterSegmentVideos @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Videos icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : US : City               |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @cityPageFooterSegmentAnswers @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Answers icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : US : City         |
      | description            | Answers link in footer      |
      | userId                 |                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @cityPageFooterSegmentBusinessOwners @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Business Owners icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : US : City                |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @cityPageFooterSegmentInvestorRelations @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Investor Relations icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : US : City                |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @cityPageFooterSegmentAboutUs @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left About Us icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : US : City                |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @cityPageFooterSegmentCareers @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Careers icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : US : City        |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @cityPageFooterSegmentFAQ @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left FAQ icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : US : City  |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @cityPageFooterSegmentContactUs @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Contact Us icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : US : City        |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @cityPageFooterSegmentJoin @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Join icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : US : City        |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @cityPageFooterSegmentTermsOfUse @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer TermsOfUse icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : US : City          |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @cityPageFooterSegmentPrivacyPolicy @cityPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Privacy Policy icon on Drupal City Page
    Given user is on a visitor city page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : US : City |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : US : City           |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |
