Feature:

@leafAdvertiserPageCall @companyListTreeRegression @companyListTreeSmoke
  Scenario: segment page call for Leaf Page Advertiser
    Given user is on a visitor site leaf advertiser page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    Then the segment call contains parameters
      | prop_key               | prop_value                                                  |
      | atTestOffer            |                                                             |
      | categoryId             | 294                                                         |
      | cid                    |                                                             |
      | homeAdvisorCategoryId  | 10381                                                       |
      | marketId               | 27                                                          |
      | name                   | Visitor : SP Profile                                        |
      | pageVersion            | Lullabot Redesign                                           |
      | path                   | /companylist/us/co/boulder/painting-plus-reviews-221961.htm |
      | referrer               |                                                             |
      | search                 |                                                             |
      | srCtaDisplayed         |                                                             |
      | srCtaVersion           |                                                             |
      | title                  | Painting Plus Reviews - Boulder, CO \| Angie's List         |
      | url                    |                                                             |
      | userId                 |                                                             |
      | userType               |                                                             |
      | visitorPageCategory    | PAINTING - INTERIOR                                         |
      | visitorPageGeo         | BOULDER                                                     |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR                               |

##### Header Tests #####

  @headerJoinNowLeafAdvertiserPage @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: user is on a visitor site leaf advertiser page and clicks on Join Now
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key            | prop_value           |
    | description         | Join link in header  |
    | activityLocation    | Visitor : SP Profile |
    | userId              |                      |
    | visitorPageCategory | Painting - Interior  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @headerSignInLeafAdvertiserPage @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: user is on a visitor site leaf advertiser page and clicks on Sign In button
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
    | action_method | action_params   |
    | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | Sign In link in header |
    And the segment call contains parameters
    | prop_key            | prop_value             |
    | description         | Sign In link in header |
    | activityLocation    | Visitor : SP Profile   |
    | userId              |                        |
    | visitorPageCategory | Painting - Interior    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"


  @headerBusinessCenterLeafAdvertiserPage @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: user is on a visitor site leaf advertiser page and clicks on Business Center button
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
    | action_method | action_params    |
    | click         | #business-center |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                      |
    | description      | Business Owners link in header  |
    | activityLocation | Visitor : SP Profile            |
    | userId           |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"



  @leafAdvertiserPageSegmentHeaderInteriorApplianceRepair @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Appliance Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : SP Profile                  |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/appliance-repair.htm"


  @leafAdvertiserPageSegmentHeaderInteriorCarpetCleaning  @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Carpet Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/carpet-cleaning.htm"


  @leafAdvertiserPageSegmentHeaderInteriorContractors @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Contractors in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/contractor.htm"


  @leafAdvertiserPageSegmentHeaderInteriorDrywall @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Drywall in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/drywall.htm"

  @leafAdvertiserPageSegmentHeaderInteriorElectrical @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Interior Electrical in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/electrical.htm"

  @leafAdvertiserPageSegmentHeaderInteriorFlooring @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Flooring in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/flooring.htm"

  @leafAdvertiserPageSegmentHeaderInteriorHVAC @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior HVAC in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/hvac.htm"

  @leafAdvertiserPageSegmentHeaderInteriorHouseCleaning @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/house-cleaning.htm"

  @leafAdvertiserPageSegmentHeaderInteriorPainting @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Painting in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/interior-painting.htm"

  @leafAdvertiserPageSegmentHeaderInteriorPlumbing @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Plumbing in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/plumbing.htm"

  @leafAdvertiserPageSegmentHeaderInteriorRemodeling @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Remodeling in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                               |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Interior menu category link in header    |
      | userId                 |                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/kitchen-and-bath-remodeling.htm"

  @leafAdvertiserPageSegmentHeaderInteriorViewAll @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label         |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                          |
      | activityLocation       | Visitor : SP Profile                                |
      | description            | Interior menu view all categories link in header    |
      | userId                 |                                                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @leafAdvertiserPageSegmentHeaderExteriorConcreteRepair @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Concrete Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/concrete-repair.htm"

  @leafAdvertiserPageSegmentHeaderExteriorDoors @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Exterior Doors in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/doors.htm"

  @leafAdvertiserPageSegmentHeaderExteriorDriveways @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Driveways in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/driveways.htm"

  @leafAdvertiserPageSegmentHeaderExteriorPainting @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/exterior-painting.htm"

  @leafAdvertiserPageSegmentHeaderExteriorGarage @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on and clicks on Garage in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/garage-doors.htm"

  @leafAdvertiserPageSegmentHeaderExteriorGutterCleaning @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Gutter Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/gutter-cleaning.htm"

  @leafAdvertiserPageSegmentHeaderExteriorGutterRepair @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Gutter Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/gutter-repair-replacement.htm"

  @leafAdvertiserPageSegmentHeaderExteriorHomeBuilders @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Builders in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/home-builders.htm"

  @leafAdvertiserPageSegmentHeaderExteriorMasonry @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Masonry in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/masonry.htm"

  @leafAdvertiserPageSegmentHeaderExteriorRoofing @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Roofing in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/roofing.htm"

  @leafAdvertiserPageSegmentHeaderExteriorSiding @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Siding in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/siding.htm"

  @leafAdvertiserPageSegmentHeaderExteriorWindows @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Windows in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(12) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/window-treatments.htm"

  @leafAdvertiserPageSegmentHeaderExteriorViewAll @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks and clicks on Exterior View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span  |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                        |
      | activityLocation       | Visitor : SP Profile                              |
      | description            | Exterior menu view all categories link in header  |
      | userId                 |                                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @leafAdvertiserPageSegmentHeaderLawnDecks @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on and clicks on Decks in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/decks-and-porches.htm"

  @leafAdvertiserPageSegmentHeaderLawnFencing @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Fencing in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/fencing.htm"

  @leafAdvertiserPageSegmentHeaderLawnLandSurveying @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Land Surveying in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/land-surveying.htm"

  @leafAdvertiserPageSegmentHeaderLawnLandscaping @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/landscaping.htm"

  @leafAdvertiserPageSegmentHeaderLawnYard @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lawn & Yard in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/lawn-and-yard-work.htm"

  @leafAdvertiserPageSegmentHeaderLawnIrrigation @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lawn Irrigation in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/lawn-irrigation.htm"

  @leafAdvertiserPageSegmentHeaderLawnMowerRepair @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lawn Mower Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/lawn-mower-repair.htm"

  @leafAdvertiserPageSegmentHeaderLawnLeafRemoval @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Leaf Removal in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/leaf-removal.htm"

  @leafAdvertiserPageSegmentHeaderLawnPatios @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Patios in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/sunroom-and-patio-remodeling.htm"

  @leafAdvertiserPageSegmentHeaderLawnShed @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Shed Builders in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/garage-builders.htm"

  @leafAdvertiserPageSegmentHeaderLawnTreeSvc @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Tree Service in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                  |
      | activityLocation       | Visitor : SP Profile                        |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/tree-service.htm"

  @leafAdvertiserPageSegmentHeaderLawnViewAll @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label         |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                             |
      | activityLocation       | Visitor : SP Profile                                   |
      | description            | Lawn & Garden menu view all categories link in header  |
      | userId                 |                                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @leafAdvertiserPageSegmentHeaderMoreBasement @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Basement Waterproofing in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/basement-waterproofing.htm"

  @leafAdvertiserPageSegmentHeaderMoreDogGrooming @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Dog Grooming in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/pet-grooming.htm"


  @leafAdvertiserPageSegmentHeaderMoreHandymen @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Handymen in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/handyman-service.htm"

  @leafAdvertiserPageSegmentHeaderMoreJunk @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Junk Hauling in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/hauling.htm"

  @leafAdvertiserPageSegmentHeaderMoreLocksmiths @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Locksmiths in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/locksmiths.htm"

  @leafAdvertiserPageSegmentHeaderMoreMoving @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Moving Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/moving.htm"

  @leafAdvertiserPageSegmentHeaderMorePests @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Pest Control Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/pest-control.htm"

  @leafAdvertiserPageSegmentHeaderMorePressureWashing @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Pressure Washing Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/pressure-washing.htm"

  @leafAdvertiserPageSegmentHeaderMoreSeptic @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Septic Tanks Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/septic-tank.htm"

  @leafAdvertiserPageSegmentHeaderMoreViewAllCat @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on View All Cats - More in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(5) > a           |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                   |
      | activityLocation       | Visitor : SP Profile                         |
      | description            | More menu view all categories link in header |
      | userId                 |                                              |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @leafAdvertiserPageSegmentHeaderMoreNearMe @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Near Me in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(3) > a           |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : SP Profile            |
      | description            | Near Me link in desktop header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceAppliances @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Appliances in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/appliances/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceBaseFound @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Basements & Foundations in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/basements-and-foundations/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceBathRemod @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Bathroom Remodel in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/bathroom-remodel/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceChimney @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Chimneys & Fireplaces in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/chimneys-fireplaces/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceCleaning @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/cleaning/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceContractors @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Contractors in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/contractors/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceElectrical @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Electrical in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/electrical/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceFlooring @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Flooring in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/flooring/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceGarageDrive @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Garages & Driveways in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/garages-and-driveways/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceHVAC @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/hvac/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceHomeConstruction @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Construction in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-construction-design/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceHomeExterior @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Exteriors in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(12) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-exteriors/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceHomeInterior @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Interior in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(13) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-interiors/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceHomeSecurity @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Security in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(14) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-security-systems/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceKitchenRemod @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Kitchen Remodeling in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(15) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/kitchen-remodeling/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceLandscaping @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(16) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/landscaping-lawn-care/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceLighting @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lighting in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(17) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/lights/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceMoving @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Moving in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(18) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/movers/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceOutdoorLiving @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Outdoor Living in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(19) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @leafAdvertiserPageSegmentHeaderArticlesAdvicePests @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Pests in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(20) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/household-pest-control/"

  @leafAdvertiserPageSegmentHeaderArticlesAdvicePlumbing @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(21) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/plumbing/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceRemodeling @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(22) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/remodeling/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceRoofing @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Roofing in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(23) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/roofing/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceStoreageOrg @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Storage & Organization in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(24) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/storage-organization/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceWasteManagement @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Waste Management in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(25) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       | Visitor : SP Profile                            |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/waste-management/"

  @leafAdvertiserPageSegmentHeaderArticlesAdviceViewAll @leafAdvertiserPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span  |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                                               |
      | activityLocation       | Visitor : SP Profile                                     |
      | description            | Articles & Advice menu view all articles link in header  |
      | userId                 |                                                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"




##### Body Tests #####
  @leafAdvertiserRaqClick @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: RAQ click on Leaf Advertiser.
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                           |
      | click         | css: .leaf-contact-us__contact-link > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Request a Quote button |
    And the segment call contains parameters
      | prop_key                | prop_value                      |
      | activityLocation        | Visitor : SP Profile            |
      | description             | Request a Quote button          |
      | legacyServiceProviderId |                                 |
      | marketId                | 27                              |
      | overallReviewGrade      |                                 |
      | reviewCount             |                                 |
      | userId                  |                                 |
      | visitorPageCategory     | PAINTING - INTERIOR             |
      | visitorPageGeo          | BOULDER                         |
      | visitorPageGeoCategory  | BOULDER - PAINTING - INTERIOR   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/lead/request_a_quote/221961/project?categoryId=294&placementType=Web_LeafAdvertiserPage&withAlId=221961"

  @leafAdvertiserFirstOfferClick @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on first offer - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page with deals
    When a user performs actions
      | action_method | action_params                                                 |
      | click         | css: #offers > div.owl-wrapper-outer > div > div:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value  |
      | description  | View Deal CTA |
    And the segment call contains parameters
      | prop_key                | prop_value               |
      | activityLocation        | Visitor : SP Profile     |
      | dealsDisplayed          |                          |
      | description             | View Deal CTA            |
      | gradeDisplayed          |                          |
      | marketId                | 5                        |
      | offerId                 |                          |
      | priceDisplayed          |                          |
      | rank                    |                          |
      | serviceProviderId       |                          |
      | userId                  |                          |
      | visitorPageCategory     | PLUMBING                 |
      | visitorPageGeo          | HILLIARD                 |
      | visitorPageGeoCategory  | HILLIARD - PLUMBING      |

    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "placementType=Web_LeafAdvertiserPage"

  @leafAdvertiserFirstOfferButtonClick @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on button - first offer - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page with deals
    When a user performs actions
      | action_method | action_params                                     |
      | click         | css: #offer-50674 > a > div:nth-child(5) > button |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value  |
      | description  | View Deal CTA |
    And the segment call contains parameters
      | prop_key                | prop_value               |
      | activityLocation        | Visitor : SP Profile     |
      | dealsDisplayed          |                          |
      | description             | View Deal CTA            |
      | gradeDisplayed          |                          |
      | marketId                | 5                        |
      | offerId                 |                          |
      | priceDisplayed          |                          |
      | rank                    |                          |
      | serviceProviderId       |                          |
      | userId                  |                          |
      | visitorPageCategory     | PLUMBING                 |
      | visitorPageGeo          | HILLIARD                 |
      | visitorPageGeoCategory  | HILLIARD - PLUMBING      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "placementType=Web_LeafAdvertiserPage"

  @leafAdvertiserSecondOfferClick @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on button - second offer - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page with deals
    When a user performs actions
      | action_method | action_params                                                 |
      | click         | css: #offers > div.owl-wrapper-outer > div > div:nth-child(2) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value  |
      | description  | View Deal CTA |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : SP Profile |
      | dealsDisplayed         |                      |
      | description            | View Deal CTA        |
      | gradeDisplayed         |                      |
      | marketId               | 5                    |
      | offerId                |                      |
      | priceDisplayed         |                      |
      | rank                   |                      |
      | serviceProviderId      |                      |
      | userId                 |                      |
      | visitorPageCategory    | PLUMBING             |
      | visitorPageGeo         | HILLIARD             |
      | visitorPageGeoCategory | HILLIARD - PLUMBING  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "placementType=Web_LeafAdvertiserPage"

  @leafAdvertiserThirdOfferClick @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on button - third offer - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page with deals
    When a user performs actions
      | action_method | action_params                                                 |
      | click         | css: #offers > div.owl-wrapper-outer > div > div:nth-child(3) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value  |
      | description  | View Deal CTA |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : SP Profile |
      | dealsDisplayed         |                      |
      | description            | View Deal CTA        |
      | gradeDisplayed         |                      |
      | marketId               | 5                    |
      | offerId                |                      |
      | priceDisplayed         |                      |
      | rank                   |                      |
      | serviceProviderId      |                      |
      | userId                 |                      |
      | visitorPageCategory    | PLUMBING             |
      | visitorPageGeo         | HILLIARD             |
      | visitorPageGeoCategory | HILLIARD - PLUMBING  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "placementType=Web_LeafAdvertiserPage"

  @leafAdvertiserSeeAllDealButtonClick @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on button - See All Deals - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page with deals
    When a user performs actions
      | action_method | action_params       |
      | click         | css: #see-all-deals |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | See All Deals button |
    And the segment call contains parameters
      | prop_key                | prop_value            |
      | activityLocation        | Visitor : SP Profile  |
      | dealsDisplayed          |                       |
      | description             | See All Deals button  |
      | marketId                | 5                     |
      | userId                  |                       |
      | visitorPageCategory     | PLUMBING              |
      | visitorPageGeo          | HILLIARD              |
      | visitorPageGeoCategory  | HILLIARD - PLUMBING   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search"

  @leafAdvertiserDealsScrollButtonClick @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on Deals scroll button on Advertiser Leaf
    Given user is on a visitor site leaf advertiser page with deals
    When a user performs actions
      | action_method | action_params                                            |
      | click         | css: #offers > div:nth-child(2) > div > div:nth-child(2) |  
      | click         | css: #offers > div:nth-child(2) > div > div:nth-child(3) |
      | click         | css: #offers > div:nth-child(2) > div > div:nth-child(2) |
      | click         | css: #offers > div:nth-child(2) > div > div:nth-child(1) |
      | click         | css: #offers > div:nth-child(2) > div > div:nth-child(2) |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method | action_params                                                 |
      | click         | css: #offers > div.owl-wrapper-outer > div > div:nth-child(5) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value  |
      | description  | View Deal CTA |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : SP Profile |
      | dealsDisplayed         |                      |
      | description            | View Deal CTA        |
      | gradeDisplayed         |                      |
      | marketId               | 5                    |
      | offerId                |                      |
      | priceDisplayed         |                      |
      | rank                   |                      |
      | serviceProviderId      |                      |
      | userId                 |                      |
      | visitorPageCategory    | PLUMBING             |
      | visitorPageGeo         | HILLIARD             |
      | visitorPageGeoCategory | HILLIARD - PLUMBING  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search"

  @leafAdvertiserContactUs @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on button - Contact Us
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                             |
      | click         | css: .leaf-contact-us > div.leaf-contact-us__contact-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | modalName    | Contact SP       | 
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/painting-plus-reviews-221961.htm"

  @leafAdvertiserReviewPage2 @leafAdvertiserReviewPagination @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on Reviews page two - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .pager > li:nth-child(2) > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=1"

  @leafAdvertiserReviewPage3 @leafAdvertiserReviewPagination @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on Reviews page three - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .pager > li:nth-child(3) > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=2"

  @leafAdvertiserReviewPage4 @leafAdvertiserReviewPagination @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on Reviews page four - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .pager > li:nth-child(4) > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=3"
    
  @leafAdvertiserReviewPage5 @leafAdvertiserReviewPagination @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on Reviews page five - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .pager > li:nth-child(5) > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=4"

  @leafAdvertiserReviewPage6 @leafAdvertiserReviewPagination @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on Reviews page six - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .pager > li:nth-child(6) > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=5"

  @leafAdvertiserReviewPageNext @leafAdvertiserReviewPagination @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on Reviews next page - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                               |
      | click         | css: .pager > li.pager-next.right-caret > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=1"

  @leafAdvertiserReviewPagePrev @leafAdvertiserReviewPagination @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on Reviews prev page - Advertiser Leaf
    Given user is on a visitor site page
      """
      /companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=2
      """
    When a user performs actions
      | action_method | action_params                                  |
      | click         | css: .pager > li.pager-previous.left-caret > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=1"


  @leafAdvertiserReviewFilter @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on review filter category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                           |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Review category filter |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Review category filter        |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserReviewSecondFilter @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on second review filter category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                           |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(2) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Review category filter |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Review category filter        |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserReviewThirdFilter @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on third review filter category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                           |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(3) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Review category filter |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Review category filter        |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserReviewFourthFilter @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on fourth review filter category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                           |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(4) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Review category filter |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Review category filter        |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserMultipleReviewFilter @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on mulitple review filter category links
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                           |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(1) |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(2) |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(3) |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(4) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Review category filter |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Review category filter        |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserReviewClearFilter @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on review clear filter link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                    |
      | click         | css: .leaf-reviews__clear-filter |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value      |
      | description  | Clear filter link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Clear filter link             |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserClickReviewFilterClickClearFilter @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on a review filter and then click clear filter link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                           |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(1) |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method | action_params                    |
      | click         | css: .leaf-reviews__clear-filter |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value      |
      | description  | Clear filter link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Clear filter link             |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserReviewFilterLoadMore @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on a review filter and then the load more link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                           |
      | click         | css: .leaf-reviews__category-filters > div:nth-child(1) |
    Then we wait "1" seconds for the next page to load 
    When a user performs actions
      | action_method | action_params                          |
      | click         | css: .leaf-reviews__load-more > button |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Show more reviews link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Show more reviews link        |
      | marketId               | 27                            |
      | serviceProviderId      |                               |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |

  @leafAdvertiserFirstBreadcrumbLink  @leafAdBreadcrumb @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: Click on the first from the right breadcrumb link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .breadcrumb > a:nth-child(6) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | description  | Breadcrumbs link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Breadcrumbs link              |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/interior-painting.htm"

  @leafAdvertiserSecondBreadcrumbLink  @leafAdBreadcrumb @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on the second from the right breadcrumb link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .breadcrumb > a:nth-child(5) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | description  | Breadcrumbs link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Breadcrumbs link              |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder"

  @leafAdvertiserThirdBreadcrumbLink  @leafAdBreadcrumb @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on the third from the right breadcrumb link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .breadcrumb > a:nth-child(4) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | description  | Breadcrumbs link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Breadcrumbs link              |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co"

  @leafAdvertiserFourthBreadcrumbLink  @leafAdBreadcrumb @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on the fourth from the right breadcrumb link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .breadcrumb > a:nth-child(3) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | description  | Breadcrumbs link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Breadcrumbs link              |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/interior-painting.htm"

  @leafAdvertiserFifthBreadcrumbLink  @leafAdBreadcrumb @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on the fifth from the right breadcrumb link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .breadcrumb > a:nth-child(2) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | description  | Breadcrumbs link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Breadcrumbs link              |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist"

  @leafAdvertiserSixthBreadcrumbLink  @leafAdBreadcrumb @leafAdvertiserBody @companyListTreeRegression
  Scenario: Click on the sixth from the right breadcrumb link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .breadcrumb > a:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | description  | Breadcrumbs link |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Breadcrumbs link              |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslist.com"

  @leafAdvertiserFirstServiceCategoryLink @leafAdCatLinks @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: click on the first category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                                      |
      | click         | css: .leaf-tags__list.leaf-tags__list--collapsed > li:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | description  | Serviced category links |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Serviced category links       |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/interior-painting.htm"

  @leafAdvertiserSecondServiceCategoryLink @leafAdCatLinks @leafAdvertiserBody @companyListTreeRegression
  Scenario: click on the second category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                                      |
      | click         | css: .leaf-tags__list.leaf-tags__list--collapsed > li:nth-child(2) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | description  | Serviced category links |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Serviced category links       |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/exterior-painting.htm"

  @leafAdvertiserThirdServiceCategoryLink @leafAdCatLinks @leafAdvertiserBody @companyListTreeRegression
  Scenario: click on the third category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                                      |
      | click         | css: .leaf-tags__list.leaf-tags__list--collapsed > li:nth-child(3) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | description  | Serviced category links |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Serviced category links       |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/drywall.htm"

  @leafAdvertiserFourthServiceCategoryLink @leafAdCatLinks @leafAdvertiserBody @companyListTreeRegression
  Scenario: click on the fourth category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                                      |
      | click         | css: .leaf-tags__list.leaf-tags__list--collapsed > li:nth-child(4) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | description  | Serviced category links |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Serviced category links       |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/pressure-washing.htm"

  @leafAdvertiserFifthServiceCategoryLink @leafAdCatLinks @leafAdvertiserBody @companyListTreeRegression
  Scenario: click on the fifth category link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                                      |
      | click         | css: .leaf-tags__list.leaf-tags__list--collapsed > li:nth-child(5) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | description  | Serviced category links |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Serviced category links       |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/deck-maintenance.htm"

  @leafAdvertiserServiceCategoryMoreLink @leafAdCatLinks @leafAdvertiserBody @companyListTreeRegression
  Scenario: click on the category more link
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                                                      |
      | click         | css: .leaf-tags__list.leaf-tags__list--collapsed > li:nth-child(6) |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method | action_params                           |
      | click         | css: .leaf-tags__list > li:nth-child(6) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | description  | Serviced category links |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Serviced category links       |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/wallpaper-removal.htm"

  @leafAdvertiserJoinNowLinkBeneathReviews @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: click on the Join Now link beneath reviews
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                          |
      | click         | css: .leaf-reviews__cta-link.join-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value              |
      | description  | Join link beneath reviews |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Join link beneath reviews     |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslist.com/app/signup"

  @leafAdvertiserSignInLinkBeneathReviews @leafAdvertiserBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: click on the Sign In link beneath reviews
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params                       |
      | click         | css: .leaf-reviews__cta-member-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                 |
      | description  | Sign In link beneath reviews |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Sign In link beneath reviews  |
      | marketId               | 27                            |
      | userId                 |                               |
      | visitorPageCategory    | Painting - Interior           |
      | visitorPageGeo         | BOULDER                       |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslist.com/member/login"


##### Footer #####

  @leafAdvertiserFooterTopCityNYC @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer NYC top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/interior-painting.htm"


  @leafAdvertiserFooterTopCityHouston @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Houston top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/interior-painting.htm"


  @leafAdvertiserFooterTopCityChi @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Chicago top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/interior-painting.htm"


  @leafAdvertiserFooterTopCityIndy @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Indianapolis top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/interior-painting.htm"


  @leafAdvertiserFooterTopCityBos @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Boston top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/interior-painting.htm"

  @leafAdvertiserFooterTopCityATL @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Atlanta top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/interior-painting.htm"

  @leafAdvertiserFooterTopCityCinci @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Cincinnati top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/interior-painting.htm"

  @leafAdvertiserFooterTopCityLA @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Los Angeles top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/interior-painting.htm"

  @leafAdvertiserTopCityDal @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Dallas top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/interior-painting.htm"

  @leafAdvertiserTopCityPitt @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Pittsburgh top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/interior-painting.htm"

  @leafAdvertiserFooterTopCityMinn @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Minneapolis top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/interior-painting.htm"

  @leafAdvertiserFooterTopCityLV @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Las Vegas top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/interior-painting.htm"

  @leafAdvertiserFooterTopCitySA @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer San Antonio top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/interior-painting.htm"

  @leafAdvertiserFooterTopCityTampa @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Tampa top city link on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/interior-painting.htm"

  @leafAdvertiserFooterSegmentJoinForFree @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Join For Free icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @leafAdvertiserFooterSegmentCompanyList @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Company List icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                   |
      | description            | Find Local Businesses link in footer   |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @leafAdvertiserFooterSegmentNearMe @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Near Me icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @leafAdvertiserFooterSegmentHowItWorks @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left How It Works icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @leafAdvertiserFooterSegmentSolutionCenter @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Solution Center icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @leafAdvertiserFooterSegmentPhotoGalleries @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Photos icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @leafAdvertiserFooterSegmentVideos @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Videos icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @leafAdvertiserFooterSegmentAnswers @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Answers icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : SP Profile        |
      | description            | Answers link in footer      |
      | userId                 |                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @leafAdvertiserFooterSegmentBusinessOwners @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Business Owners icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile               |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @leafAdvertiserFooterSegmentInvestorRelations @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Investor Relations icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile               |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @leafAdvertiserFooterSegmentAboutUs @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left About Us icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile               |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

@leafAdvertiserFooterSegmentCareers @leafAdvertiserFooter @companyListTreeFooter@companyListTreeRegression
  Scenario: User clicks on the footer-left Careers icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : SP Profile       |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @leafAdvertiserFooterSegmentFAQ @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left FAQ icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : SP Profile |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @leafAdvertiserFooterSegmentContactUs @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-left Contact Us icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : SP Profile       |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @leafAdvertiserFooterSegmentJoin @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer-right Join icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : SP Profile       |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @leafAdvertiserFooterSegmentTermsOfUse @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer TermsOfUse icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : SP Profile         |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @leafAdvertiserFooterSegmentPrivacyPolicy @leafAdvertiserFooter @companyListTreeFooter @companyListTreeRegression
  Scenario: User clicks on the footer Privacy Policy icon on leaf advertiser Page
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value             |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |
