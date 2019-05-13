Feature:

  @geoTaskChicagoKeypadPageCall @geoTaskRegression
  Scenario: Segment pagecall when the GeoTask install-keypad-lock page loads
    Given user is on a visitor site tball page
    """
    /companylist/t/chicago/install-keypad-lock.htm
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Visitor : Geo Task |
    Then the segment call contains parameters
      | prop_key                    | prop_value                                        |
      | drupalGeoTaskId             |                                                   |
      | homeAdvisorCategoryId       |                                                   |
      | name                        | Visitor : Geo Task                                |
      | path                        | /companylist/t/chicago/install-keypad-lock.htm    |
      | primaryParent4_0Category    | LOCKSMITHS                                        |
      | primaryParentCategory       | LOCKSMITHS                                        |
      | primaryParentCategoryId     |                                                   |
      | referrer                    |                                                   |
      | search                      |                                                   |
      | secondaryParent4_0Category  |                                                   |
      | secondaryParentCategory     |                                                   |
      | secondaryParentCategoryId   |                                                   |
      | srCtaDisplayed              |                                                   |
      | title                       | Install Keypad Lock - Chicago &vert; Angie's List |
      | url                         |                                                   |
      | visitorPageGeo              | CHICAGO                                           |
      | visitorPageGeoTask          | CHICAGO - INSTALL KEYPAD LOCK                     |
      | visitorPageTask             | INSTALL KEYPAD LOCK                               |


##### Header Tests #####

  @geoTaskChicagoKeypadHeaderJoinClick @geoTaskRegression
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
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
      | activityLocation | Visitor App : Geo Task    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @geoTaskChicagoKeypadHeaderBusinessOwnersClick @geoTaskRegression
  Scenario: Clicking the Business Owners button in the header
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | css: #header--business-owners-link     |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                 |
      | description  | Business Owners link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                   |
      | description      | Business Owners link in header  |
      | activityLocation | Visitor App : Geo Task       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"


  @geoTaskFurnaceRepairHeaderSignInClick @geoTaskRegression
  Scenario: Clicking the Sign In button in the header
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
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
      | activityLocation | Visitor App : Geo Task       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @geoTaskInteriorApplianceRepairClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Appliance Repair - Interior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--interior-link                 |
      | click           | css: #header--dynamic--interior-link-ApplianceRepair |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor App : Geo Task                |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"


























  @geoTaskInteriorHeatingCoolingClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Heating Cooling - Interior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #header--dynamic--interior-link                |
      | click           | css: #header--dynamic--interior-link-HeatingCooling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor App : Geo Task                |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @geoTaskInteriorViewAllClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Interior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--interior-link             |
      | click           | css: #header--dynamic--interior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor App : Geo Task                           |
      | description            | Interior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoTaskExteriorMasonryClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Masonry - Exterior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--exterior-link         |
      | click           | css: #header--dynamic--exterior-link-Masonry |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor App : Geo Task                |
      | description            | Exterior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @geoTaskExteriorViewAllClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Exterior in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--exterior-link             |
      | click           | css: #header--dynamic--exterior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor App : Geo Task                           |
      | description            | Exterior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoTaskLawnIrrigationClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Lawn Irrigation - Lawn in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #header--dynamic--lawn-link                |
      | click           | css: #header--dynamic--lawn-link-LawnIrrigation |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       | Visitor App : Geo Task                                |
      | description            | Lawn & Garden menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @geoTaskLawnViewAllClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Lawn in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--lawn-link             |
      | click           | css: #header--dynamic--lawn-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       | Visitor App : Geo Task                                |
      | description            | Lawn & Garden menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoTaskMoreJunkClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Junk Hauling - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-link-JunkHauling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor App : Geo Task            |
      | description            | More menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @geoTaskMoreNearMeClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Near Me - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-nearMe-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor App : Geo Task         |
      | description            | Near Me link in desktop header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @geoTaskMoreViewAllClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--more-link             |
      | click           | css: #header--dynamic--more-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                                   |
      | activityLocation       | Visitor App : Geo Task                       |
      | description            | More menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"


  @geoTaskArticlesOutdoorLivingClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Outdoor Living - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #header--dynamic--articles-link               |
      | click           | css: #header--dynamic--articles-link-OutdoorLiving |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                                    |
      | activityLocation       | Visitor App : Geo Task                        |
      | description            | Articles & Advice menu article link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @geoTaskArticlesViewAllClick @geoTaskRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - More in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--articles-link                 |
      | click           | css: #header--dynamic--articles-viewAllArticles-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | activityLocation | Visitor App : Geo Task |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor App : Geo Task                                  |
      | description            | Articles & Advice menu view all articles link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"