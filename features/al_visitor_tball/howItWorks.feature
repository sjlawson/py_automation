Feature:

  @howItWorksPageCall @howItWorkskRegression
  Scenario: Segment pagecall when the GeoTask install-keypad-lock page loads
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Visitor : How It Works |
    Then the segment call contains parameters
      | prop_key                    | prop_value                                     |
      | name                        | Visitor : How It Works                         |
      | path                        | /how-it-works.htm                              |
      | referrer                    |                                                |
      | search                      |                                                |
      | title                       | How Does Angie's List Work &vert; Angie's List |
      | url                         |                                                |



##### Header Tests #####

  @howItWorksHeaderJoinClick @howItWorkskRegression @tballHeaderRegression
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params                    |
     | move_to_element | id: header--join-for-free-button |
     | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Join link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                |
      | description      | Join link in header       |
      | activityLocation | Visitor : How it Works    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @howItWorksHeaderBusinessOwnersClick @howItWorkskRegression @tballHeaderRegression
  Scenario: Clicking the Business Owners button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params                       |
     | move_to_element | css: #header--business-owners-link  |
     | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Business Owners link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                      |
      | description      | Business Owners link in header  |
      | activityLocation | Visitor : How it Works          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"


  @howItWorksSignInHeaderClick @howItWorkskRegression @tballHeaderRegression
  Scenario: Clicking the Sign In button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | id: header--sign-in-link     |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                 |
      | description  | Sign In link in header       |
    And the segment call contains parameters
      | prop_key         | prop_value                   |
      | description      | Sign In link in header       |
      | activityLocation | Visitor : How it Works       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @howItWorksInteriorApplianceRepairClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Appliance Repair - Interior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--interior-link                 |
      | click           | css: #header--dynamic--interior-link-ApplianceRepair |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : How it Works                |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @howItWorksInteriorHeatingCoolingClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Heating Cooling - Interior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #header--dynamic--interior-link                |
      | click           | css: #header--dynamic--interior-link-HeatingCooling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : How it Works                |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @howItWorksInteriorViewAllClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Interior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--interior-link             |
      | click           | css: #header--dynamic--interior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor : How it Works                           |
      | description            | Interior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @howItWorksExteriorMasonryClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Masonry - Exterior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--exterior-link         |
      | click           | css: #header--dynamic--exterior-link-Masonry |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : How it Works                |
      | description            | Exterior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @howItWorksExteriorViewAllClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Exterior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--exterior-link             |
      | click           | css: #header--dynamic--exterior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor : How it Works                           |
      | description            | Exterior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @howItWorksLawnIrrigationClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Lawn Irrigation - Lawn in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #header--dynamic--lawn-link                |
      | click           | css: #header--dynamic--lawn-link-LawnIrrigation |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       | Visitor : How it Works                                |
      | description            | Lawn & Garden menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @howItWorksLawnViewAllClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Lawn in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--lawn-link             |
      | click           | css: #header--dynamic--lawn-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       | Visitor : How it Works                                |
      | description            | Lawn & Garden menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @howItWorksMoreJunkClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Junk Hauling - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-link-JunkHauling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : How it Works            |
      | description            | More menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @howItWorksMoreNearMeClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Near Me - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-nearMe-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : How it Works         |
      | description            | Near Me link in desktop header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @howItWorksMoreViewAllClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--more-link             |
      | click           | css: #header--dynamic--more-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                   |
      | activityLocation       | Visitor : How it Works                       |
      | description            | More menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"


  @howItWorksArticlesOutdoorLivingClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Outdoor Living - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #header--dynamic--articles-link               |
      | click           | css: #header--dynamic--articles-link-OutdoorLiving |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                    |
      | activityLocation       | Visitor : How it Works                        |
      | description            | Articles & Advice menu article link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @howItWorksArticlesViewAllClick @howItWorkskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--articles-link                 |
      | click           | css: #header--dynamic--articles-viewAllArticles-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : How it Works                                  |
      | description            | Articles & Advice menu view all articles link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"




###### Mobile Header Tests #####

  @howItWorksMobileHeaderOpenClick @howItWorkskMobileRegression
  Scenario: Clicking the hamburger menue in the mobile header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params           |
     | move_to_element | css: #al_show_menu > div |
     | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Hamburger menu open in mobile header  |
    And the segment call contains parameters
      | prop_key         | prop_value                |
      | description      | Hamburger menu open in mobile header       |
      | activityLocation | Visitor : How it Works    |

  @howItWorksMobileHeaderCloseClick @howItWorkskMobileRegression
  Scenario: Clicking close on the hamburger menue in the mobile header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params             |
     | move_to_element | css: #al_show_menu > div  |
     | click           |                           |
     | click           | css: #al_show_menu > div  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                           |
      | description  | Hamburger menu close in mobile header  |
    And the segment call contains parameters
      | prop_key         | prop_value                             |
      | description      | Hamburger menu close in mobile header  |
      | activityLocation | Visitor : How it Works                 |

  @howItWorksMobileHeaderJoinClick @howItWorkskMobileRegression
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | css: #al_show_menu > div   |
      | click           |                            |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                      |
      | move_to_element | css: #al_topnav > li > div.memberLinks.row > div.joinNow.col-xs-6  |
      | click           |                                                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | description  | Join Now link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                |
      | description      | Join Now link in header   |
      | activityLocation | Visitor : How it Works    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @howItWorksMobileHeaderBusinessOwnersClick @howItWorkskMobileRegression
  Scenario: Clicking the Business Owners button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #header--dynamic--mobile-business-center-link |
      | click           |                                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Business Owners link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                      |
      | description      | Business Owners link in header  |
      | activityLocation | Visitor : How it Works          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"


  @howItWorksMobileSignInHeaderClick @howItWorkskMobileRegression
  Scenario: Clicking the Sign In button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                              |
      | move_to_element | css: #header--dynamic--mobile-sign-in-link |
      | click           |                                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                 |
      | description  | Sign In link in header       |
    And the segment call contains parameters
      | prop_key         | prop_value                   |
      | description      | Sign In link in header       |
      | activityLocation | Visitor : How it Works       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @howItWorksServicesNearMeClick @howItWorkskMobileRegression
  Scenario: User clicks on Services Near Me in the mobile header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #header--dynamic--mobile-services-near-me-link |
      | click           |                                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : How it Works          |
      | description            | Near Me link in mobile header   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @howItWorksMobileInteriorDrywallClick @howItWorkskMobileRegression
  Scenario: User clicks on Drywall - Interior in the mobile header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(1) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-interior-link-Drywall |
      | click           |                                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : How it Works                |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/drywall.htm"


  @howItWorksMobileInteriorViewAllClick @howItWorkskMobileRegression
  Scenario: User clicks on the mobile View All - Interior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(1) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-interior-viewAllCats-link |
      | click           |                                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor : How it Works                           |
      | description            | Interior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @howItWorksMobileExteriorGutterCleanClick @howItWorkskMobileRegression
  Scenario: User clicks on the mobile Gutter Cleaning - Exterior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(2) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-exterior-link-GutterCleaning |
      | click           |                                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : How it Works                |
      | description            | Exterior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/gutter-cleaning.htm"

  @howItWorksMobileExteriorViewAllClick @howItWorkskMobileRegression
  Scenario: User clicks on Mobile View All - Exterior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(2) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-exterior-viewAllCats-link |
      | click           |                                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor : How it Works                           |
      | description            | Exterior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @howItWorksMobileLawnDecksClick @howItWorkskMobileRegression
  Scenario: User clicks on the Mobile Decks - Lawn in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(3) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-lawn-link-Decks                                 |
      | click           |                                                                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       | Visitor : How it Works                                |
      | description            | Lawn & Garden menu category link in header            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/decks-and-porches.htm"

  @howItWorksMobileLawnViewAllClick @howItWorkskMobileRegression
  Scenario: User clicks on View All - Lawn in the Mobile header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(3) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-lawn-viewAllCats-link                           |
      | click           |                                                                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       | Visitor : How it Works                                |
      | description            | Lawn & Garden menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @howItWorksMobileMoreJunkClick @howItWorkskMobileRegression
  Scenario: User clicks on Junk Hauling - More in the Mobile header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(4) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-more-link-JunkHauling                           |
      | click           |                                                                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : How it Works            |
      | description            | More menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @howItWorksMoreViewAllNearMeClick @howItWorkskMobileRegression
  Scenario: User clicks on View All Cats - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(4) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-more-viewAllCats-link                           |
      | click           |                                                                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : How it Works         |
      | description            | More menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"



  @howItWorksMobileArticlesCleaningClick @howItWorkskMobileRegression
  Scenario: User clicks on Cleaning - More in the Mobile header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(5) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-articles-link-Cleaning                          |
      | click           |                                                                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                    |
      | activityLocation       | Visitor : How it Works                        |
      | description            | Articles & Advice menu article link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/cleaning/"

  @howItWorksMobileArticlesViewAllClick @howItWorkskMobileRegression
  Scenario: User clicks on View All Articles in the Mobile header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params               |
     | move_to_element | css: #al_show_menu > div    |
     | click           |                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                 |
      | move_to_element | css: #al_topnav > li > div.panel-group > div:nth-child(5) > div.panel-heading |
      | click           |                                                                               |
      | move_to_element | css: #header--dynamic--mobile-articles-viewAllArticles-link                   |
      | click           |                                                                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : How it Works                                  |
      | description            | Articles & Advice menu view all articles link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"