Feature:

  @nearMePage
  Scenario: Segment pagecall when the NearMe landing page loads
    Given user is on a visitor site tball nearme landing page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | name         |  Landing Page |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                               |
      | name                  |  Landing Page                                           |
      | path                  | /nearme/                                                                 |
      | referrer              |                                                                          |
      | search                |                                                                          |
      | srCtaDisplayed        |                                                                          |
      | title                 | Services & Companies Near Me &vert; Quickly Hire the Best &vert; Angie's List |
      | url                   |                                                                          |



##### Header Tests #####

  @nearMeLandingFurnaceRepairHeaderJoinClick @nearMeRegression @tballHeaderRegression
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
     | action_method   | action_params                    |
     | move_to_element | id: header--join-for-free-button |
     | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Join link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value           |
      | description      | Join link in header  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @nearMeLandingFurnaceRepairHeaderSignInClick @nearMeRegression @tballHeaderRegression
  Scenario: Clicking the Sign In button in the header
    Given user is on a visitor site tball nearme landing page
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
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @nearMeLandingHeaderBusinessOwnersClick @nearMeRegression @tballHeaderRegression
  Scenario: Clicking the Business Owners button in the header
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
     | action_method   | action_params                       |
     | move_to_element | css: #header--business-owners-link  |
     | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Business Owners link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @nearMeLandingInteriorApplianceRepairClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Appliance Repair - Interior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--interior-link                 |
      | click           | css: #header--dynamic--interior-link-ApplianceRepair |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Interior menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @nearMeLandingInteriorHeatingCoolingClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Heating Cooling - Interior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #header--dynamic--interior-link                |
      | click           | css: #header--dynamic--interior-link-HeatingCooling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Interior menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       |                   |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @nearMeLandingInteriorViewAllClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Interior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--interior-link             |
      | click           | css: #header--dynamic--interior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Interior menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       |                                 |
      | description            | Interior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLandingExteriorMasonryClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Masonry - Exterior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--exterior-link         |
      | click           | css: #header--dynamic--exterior-link-Masonry |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Exterior menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       |                      |
      | description            | Exterior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @nearMeLandingExteriorViewAllClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Exterior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--exterior-link             |
      | click           | css: #header--dynamic--exterior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Exterior menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       |                                 |
      | description            | Exterior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLandingLawnIrrigationClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Lawn Irrigation - Lawn in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #header--dynamic--lawn-link                |
      | click           | css: #header--dynamic--lawn-link-LawnIrrigation |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Lawn & Garden menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                 |
      | activityLocation       |                           |
      | description            | Lawn & Garden menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @nearMeLandingLawnViewAllClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - Lawn in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--lawn-link             |
      | click           | css: #header--dynamic--lawn-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Lawn & Garden menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       |                                      |
      | description            | Lawn & Garden menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLandingMoreJunkClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Junk Hauling - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-link-JunkHauling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | More menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       |                  |
      | description            | More menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @nearMeLandingMoreNearMeClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Near Me - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-nearMe-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Near Me link in desktop header |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       |               |
      | description            | Near Me link in desktop header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @nearMeLandingMoreViewAllClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--more-link             |
      | click           | css: #header--dynamic--more-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | More menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                   |
      | activityLocation       |                             |
      | description            | More menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"


  @nearMeLandingArticlesOutdoorLivingClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on Outdoor Living - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #header--dynamic--articles-link               |
      | click           | css: #header--dynamic--articles-link-OutdoorLiving |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | description            | Articles & Advice menu article link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                    |
      | activityLocation       |                              |
      | description            | Articles & Advice menu article link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @nearMeLandingArticlesViewAllClick @nearMeRegression @tballHeaderRegression
  Scenario: User hovers then clicks on View All - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--articles-link                 |
      | click           | css: #header--dynamic--articles-viewAllArticles-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | description            | Articles & Advice menu view all articles link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       |                                        |
      | description            | Articles & Advice menu view all articles link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

