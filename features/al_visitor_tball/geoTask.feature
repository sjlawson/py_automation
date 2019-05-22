@geoTask
Feature:

  @geoTaskChicagoKeypadPageCall @geoTaskHeader
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

  @geoTaskChicagoKeypadHeaderJoinClick @geoTaskHeader
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


  @geoTaskChicagoKeypadHeaderBusinessOwnersClick @geoTaskHeader
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


  @geoTaskHeaderSignInClick @geoTaskHeader
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

  @geoTaskInteriorApplianceRepairClick @geoTaskHeader
  Scenario: User hovers then clicks on Appliance Repair - Interior in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @geoTaskInteriorHeatingCoolingClick @geoTaskHeader
  Scenario: User hovers then clicks on Heating Cooling - Interior in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @geoTaskInteriorViewAllClick @geoTaskHeader
  Scenario: User hovers then clicks on View All - Interior in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                           |
      | description            | Interior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoTaskExteriorMasonryClick @geoTaskHeader
  Scenario: User hovers then clicks on Masonry - Exterior in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                |
      | description            | Exterior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @geoTaskExteriorViewAllClick @geoTaskHeader
  Scenario: User hovers then clicks on View All - Exterior in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                           |
      | description            | Exterior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoTaskLawnIrrigationClick @geoTaskHeader
  Scenario: User hovers then clicks on Lawn Irrigation - Lawn in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                                |
      | description            | Lawn & Garden menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @geoTaskLawnViewAllClick @geoTaskHeader
  Scenario: User hovers then clicks on View All - Lawn in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                                |
      | description            | Lawn & Garden menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoTaskMoreJunkClick @geoTaskHeader
  Scenario: User hovers then clicks on Junk Hauling - More in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task            |
      | description            | More menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @geoTaskMoreNearMeClick @geoTaskHeader
  Scenario: User hovers then clicks on Near Me - More in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task         |
      | description            | Near Me link in desktop header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @geoTaskMoreViewAllClick @geoTaskHeader
  Scenario: User hovers then clicks on View All - More in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                       |
      | description            | More menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"


  @geoTaskArticlesOutdoorLivingClick @geoTaskHeader
  Scenario: User hovers then clicks on Outdoor Living - More in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                        |
      | description            | Articles & Advice menu article link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @geoTaskArticlesViewAllClick @geoTaskHeader
  Scenario: User hovers then clicks on View All - More in the header on the Visitor GeoTask Page
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
      | activityLocation       | Visitor App : Geo Task Visitor App : Geo Task                                  |
      | description            | Articles & Advice menu view all articles link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"



##### Body Tests #####



  @geoTaskSrTaskFlowNoPostalCode @geoTaskBody
  Scenario: User submits SR task without a Postal Code on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | css: #sr-flow-from-geotask-submit |
      | click           | css: #sr-flow-from-geotask-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : GeoTask    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                          |
      | activityLocation            | Visitor : GeoTask                                   |
      | description                 | Service Request Flow entry button                   |
      | drupalGeoTaskId             |                                                     |
      | pathName                    | /companylist/t/indianapolis/install-keypad-lock.htm |
      | primaryParent4_0Category    | LOCKSMITHS                                          |
      | primaryParentCategory       | LOCKSMITHS                                          |
      | primaryParentCategoryId     |                                                     |
      | secondaryParent4_0Category  | HOME SECURITY SYSTEMS,DOORS                         |
      | secondaryParentCategory     | ALARMS,DOORS                                        |
      | secondaryParentCategoryId   |                                                     |
      | visitorPageCategory         | LOCKSMITHS                                          |
      | visitorPageGeo              | INDIANAPOLIS                                        |
      | visitorPageGeoTask          | INDIANAPOLIS - INSTALL KEYPAD LOCK                  |
      | visitorPageTask             | INSTALL KEYPAD LOCK                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/task.Locksmith.40097.html?8152=10002&501096=201517&step=intro"

  @geoTaskSrTaskFlowWithPostalCode @geoTaskBody
  Scenario: User submits SR task with a Postal Code on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | css: #srPostalCode |
      | click           | css: #srPostalCode |
      | send_keys       | 49726              |
      | click           | css: #sr-flow-from-geotask-submit      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : GeoTask    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                          |
      | activityLocation            | Visitor : GeoTask                                   |
      | description                 | Service Request Flow entry button                   |
      | drupalGeoTaskId             |                                                     |
      | pathName                    | /companylist/t/indianapolis/install-keypad-lock.htm |
      | primaryParent4_0Category    | LOCKSMITHS                                          |
      | primaryParentCategory       | LOCKSMITHS                                          |
      | primaryParentCategoryId     |                                                     |
      | secondaryParent4_0Category  | HOME SECURITY SYSTEMS,DOORS                         |
      | secondaryParentCategory     | ALARMS,DOORS                                        |
      | secondaryParentCategoryId   |                                                     |
      | visitorPageCategory         | LOCKSMITHS                                          |
      | visitorPageGeo              | INDIANAPOLIS                                        |
      | visitorPageGeoTask          | INDIANAPOLIS - INSTALL KEYPAD LOCK                  |
      | visitorPageTask             | INSTALL KEYPAD LOCK                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/task.Locksmith.40097.html?8152=10002&501096=201517&step=intro"

  @geoTaskBreadCrumbs @geoTaskBody
  Scenario: User clicks on a bread crumb on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | css: #breadcrumb-link-Indianapolis\ Locksmiths > span |
      | click           | css: #breadcrumb-link-Indianapolis\ Locksmiths > span |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : GeoTask    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                          |
      | activityLocation            | Visitor : GeoTask                                   |
      | description                 | Breadcrumbs link                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/locksmiths.htm"

  @geoTaskRaq @geoTaskBody
  Scenario: User clicks on the RAQ CTA on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | css: #sp-raq-button |
      | click           | css: #sp-raq-button |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : GeoTask    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                          |
      | activityLocation            | Visitor : GeoTask                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/lead/request_a_quote/58688/project?&placementType=Web_GeoTask"

  @geoTaskDeals @geoTaskBody
  Scenario: User clicks on the Deals CTA on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | css: #app > div > div.container-fluid > div:nth-child(4) > div > div > div.row > div:nth-child(1) |
      | click           | css: #app > div > div.container-fluid > div:nth-child(4) > div > div > div.row > div:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : GeoTask    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                          |
      | activityLocation            | Visitor : GeoTask                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "?placementType=Web_GeoTask"

  @geoTaskSeeAllDeals @geoTaskBody
  Scenario: User clicks on the All Deals CTA on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | css: #see-all-deals |
      | click           | css: #see-all-deals |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value            |
      | description      | See All Deals button    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                             |
      | description                 | See All Deals button                                   |
      | activityLocation            | Visitor : GeoTask                                      |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/deals/search"


  @geoTaskRelated @geoTaskBody
  Scenario: User clicks on the Related Geotasks CTA on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | css: #geoTaskLink |
      | click           | css: #geoTaskLink |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value            |
      | description      | Related GeoTask link    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                             |
      | description                 | Related GeoTask link                                   |
      | activityLocation            | Visitor : GeoTask                                      |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/t/indianapolis/design-interior-lighting.htm"

  @geoTaskRelatedGeoCat @geoTaskBody
  Scenario: User clicks on the related geoCat CTA on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | css: #geoCatLink |
      | click           | css: #geoCatLink |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | description      | Related GeoCat link    |
    And the segment call contains parameters
      | prop_key                    | prop_value                                            |
      | description                 | Related GeoCat link                                   |
      | activityLocation            | Visitor : GeoTask                                     |
    And we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/home-security-systems.htm"





##### Footer Tests #####


  @geoTaskFooterJoin @geoTaskFooter
  Scenario: User clicks on Join For Free in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #footer--join-for-free-link                |
      | click           | css: #footer--join-for-free-link                |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                 |
      | description      | Join For Free link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor App : Geo Task       |
      | description            | Join For Free link in footer |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @geoTaskFooterCompanyList @geoTaskFooter
  Scenario: User clicks on Find Local... in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #footer--find-local-business-link          |
      | click           | css: #footer--find-local-business-link          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                         |
      | description      | Find Local Businesses link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                           |
      | activityLocation       | Visitor App : Geo Task                                      |
      | description            | Find Local Businesses link in footer |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoTaskFooterNearMe @geoTaskFooter
  Scenario: User clicks on Near Me in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #footer--services-near-me-link          |
      | click           | css: #footer--services-near-me-link          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                    |
      | description      | Services Near Me link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor App : Geo Task       |
      | description            | Services Near Me link in footer |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @geoTaskFooterHowItWorks @geoTaskFooter
  Scenario: User clicks on How It Works in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                            |
      | move_to_element | css: #footer--how-it-works-link          |
      | click           | css: #footer--how-it-works-link          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                |
      | description      | How It Works link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor App : Geo Task       |
      | description            | How It Works link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @geoTaskFooterSolution @geoTaskFooter
  Scenario: User clicks on Solution Center in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                            |
      | move_to_element | css: #footer--solution-center-link       |
      | click           | css: #footer--solution-center-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                   |
      | description      | Solution Center link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor App : Geo Task                                    |
      | description            | Solution Center link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @geoTaskFooterPhotos @geoTaskFooter
  Scenario: User clicks on Photos in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                            |
      | move_to_element | css: #footer--photo-galleries-link       |
      | click           | css: #footer--photo-galleries-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                   |
      | description      | Photo Galleries link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor App : Geo Task                                    |
      | description            | Photo Galleries link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @geoTaskFooterVideos @geoTaskFooter
  Scenario: User clicks on Videos in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | css: #footer--videos-link       |
      | click           | css: #footer--videos-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value          |
      | description      | Videos link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       | Visitor App : Geo Task                           |
      | description            | Videos link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @geoTaskFooterAnswers @geoTaskFooter
  Scenario: User clicks on Answers in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--answers-link       |
      | click           | css: #footer--answers-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | description      | Answers link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       | Visitor App : Geo Task                           |
      | description            | Answers link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "answers.angieslist.com"

  @geoTaskFooterBo @geoTaskFooter
  Scenario: User clicks on Business Owners in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #footer--for-business-owners-link       |
      | click           | css: #footer--for-business-owners-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                       |
      | description      | For Business Owners link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor App : Geo Task                                       |
      | description            | For Business Owners link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @geoTaskFooterPress @geoTaskFooter
  Scenario: User clicks on Press in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #footer--press-link       |
      | click           | css: #footer--press-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | description      | Press link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value              |
      | activityLocation       | Visitor App : Geo Task                         |
      | description            | Press link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/in-the-press.htm"

  @geoTaskFooterInvest @geoTaskFooter
  Scenario: User clicks on investor relations in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                               |
      | move_to_element | css: #footer--investor-relations-link       |
      | click           | css: #footer--investor-relations-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                       |
      | description      | Investor Relations link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                           |
      | activityLocation       | Visitor App : Geo Task                                      |
      | description            | Investor Relations link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angihomeservices.com/investor-overview"

  @geoTaskFooterAboutUs @geoTaskFooter
  Scenario: User clicks on about us in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--about-us-link      |
      | click           | css: #footer--about-us-link      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                       |
      | description      | About Angie’s List link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                           |
      | activityLocation       | Visitor App : Geo Task                                      |
      | description            | About Angie’s List link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @geoTaskFooterCareers @geoTaskFooter
  Scenario: User clicks on careers in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--careers-link       |
      | click           | css: #footer--careers-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value            |
      | description      | Careers link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       | Visitor App : Geo Task                           |
      | description            | Careers link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".abouthomeadvisor.com/careers/"

  @geoTaskFooterFaq @geoTaskFooter
  Scenario: User clicks on FAQ in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | css: #footer--faq-link      |
      | click           | css: #footer--faq-link      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | description      | FAQs link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value             |
      | activityLocation       | Visitor App : Geo Task                        |
      | description            | FAQs link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"

  @geoTaskFooterContactUs @geoTaskFooter
  Scenario: User clicks on Contact Us in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | css: #footer--contact-us-link      |
      | click           | css: #footer--contact-us-link      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value               |
      | description      | Contact Us link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor App : Geo Task                              |
      | description            | Contact Us link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @geoTaskFooterJoinRight @geoTaskFooter
  Scenario: User clicks on Join - Right in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #footer--join-button      |
      | click           | css: #footer--join-button      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | description      | Join button in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor App : Geo Task                          |
      | description            | Join button in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @geoTaskFooterIos @geoTaskFooter
  Scenario: User clicks on iOS in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | css: #footer--app-store-badge     |
      | click           | css: #footer--app-store-badge     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value               |
      | description      | App Store badge in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor App : Geo Task                              |
      | description            | App Store badge in footer    |

  @geoTaskFooterAndroid @geoTaskFooter
  Scenario: User clicks on Android in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | css: #footer--google-play-badge     |
      | click           | css: #footer--google-play-badge     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                 |
      | description      | Google Play badge in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor App : Geo Task                                |
      | description            | Google Play badge in footer    |

  @geoTaskFooterTweetTweet @geoTaskFooter
  Scenario: User clicks on Tweet Tweet in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #footer--twitter-icon     |
      | click           | css: #footer--twitter-icon     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value            |
      | description      | Twitter icon in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       | Visitor App : Geo Task                           |
      | description            | Twitter icon in footer    |

  @geoTaskFooterBook @geoTaskFooter
  Scenario: User clicks on Face O' Books in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | css: #footer--facebook-icon     |
      | click           | css: #footer--facebook-icon     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value             |
      | description      | Facebook icon in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor App : Geo Task                            |
      | description            | Facebook icon in footer    |

  @geoTaskPinterest @geoTaskFooter
  Scenario: User clicks on Pins in the Footer on the Visitor GeoTask Page
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--pinterest-icon     |
      | click           | css: #footer--pinterest-icon     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value              |
      | description      | Pinterest icon in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor App : Geo Task                             |
      | description            | Pinterest icon in footer    |