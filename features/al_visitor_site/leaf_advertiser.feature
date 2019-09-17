Feature:

  @leafAdvertiserPageCall
  Scenario: segment page call for Leaf Page Advertiser
    Given user is on a visitor site leaf advertiser page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    Then the segment call contains parameters
      | prop_key               | prop_value                                                                              |
      | atTestOffer            |                                                                                         |
      | categoryId             | 294                                                                                     |
      | cid                    |                                                                                         |
      | homeAdvisorCategoryId  | 10381                                                                                   |
      | marketId               | 27                                                                                      |
      | name                   | Visitor : SP Profile                                                                    |
      | pageVersion            | Lullabot Redesign                                                                       |
      | path                   | /companylist/us/co/boulder/painting-plus-reviews-221961.htm                |
      | referrer               |                                                                                         |
      | search                 |                                                                                         |
      | srCtaDisplayed         |                                                                                         |
      | srCtaVersion           |                                                                                         |
      | title                  | Ace of Diamonds Painting Reviews - BOULDER, CO \| Angie's List                         |
      | url                    |                                                                                         |
      | userId                 |                                                                                         |
      | userType               | Visitor - New                                                                           |
      | visitorPageCategory    | PAINTING - INTERIOR                                                                     |
      | visitorPageGeo         | BOULDER                                                                                |
      | visitorPageGeoCategory | BOULDER - PAINTING - INTERIOR                                                          |


##### Header Tests #####
  @headerJoinNowLeafPage @leafPageHeader @companyListTreeHeader
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


  @headerSignInLeafPage @leafPageHeader @companyListTreeHeader
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


  @headerBusinessCenterLeafPage @leafPageHeader @companyListTreeHeader
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



  @leafPageSegmentHeaderInteriorApplianceRepair @leafPageHeader @companyListTreeHeader
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


  @leafPageSegmentHeaderInteriorCarpetCleaning  @leafPageHeader @companyListTreeHeader
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


  @leafPageSegmentHeaderInteriorContractors @leafPageHeader @companyListTreeHeader
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


  @leafPageSegmentHeaderInteriorDrywall @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorElectrical @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorFlooring @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorHVAC @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorHouseCleaning @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorPainting @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorPlumbing @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorRemodeling @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderInteriorViewAll @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorConcreteRepair @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorDoors @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorDriveways @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorPainting @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorGarage @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorGutterCleaning @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorGutterRepair @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorHomeBuilders @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorMasonry @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorRoofing @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorSiding @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorWindows @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderExteriorViewAll @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnDecks @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnFencing @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnLandSurveying @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnLandscaping @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnYard @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnIrrigation @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnMowerRepair @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnLeafRemoval @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnPatios @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnShed @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnTreeSvc @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderLawnViewAll @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreBasement @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreDogGrooming @leafPageHeader @companyListTreeHeader
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


  @leafPageSegmentHeaderMoreHandymen @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreJunk @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreLocksmiths @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreMoving @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMorePests @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMorePressureWashing @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreSeptic @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreViewAllCat @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderMoreNearMe @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceAppliances @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceBaseFound @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceBathRemod @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceChimney @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceCleaning @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceContractors @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceElectrical @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceFlooring @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceGarageDrive @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceHVAC @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceHomeConstruction @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceHomeExterior @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceHomeInterior @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceHomeSecurity @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceKitchenRemod @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceLandscaping @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceLighting @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceMoving @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceOutdoorLiving @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdvicePests @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdvicePlumbing @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceRemodeling @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceRoofing @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceStoreageOrg @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceWasteManagement @leafPageHeader @companyListTreeHeader
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

  @leafPageSegmentHeaderArticlesAdviceViewAll @leafPageHeader @companyListTreeHeader
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
  @leafAdvertiserRaqClick
  Scenario: RAQ click on Leaf Advertiser.
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params   |
      | click         | css: #block-system-main > div > div.grayRow.leaf--row__top > div > div.leaf__top-left > div.grayRow.leaf__contact-us > div > div.leaf-contact-us__contact-link > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Request a Quote button |
    And the segment call contains parameters
      | prop_key                | prop_value                       |
      | activityLocation        | Visitor : SP Profile             |
      | description             | Request a Quote button           |
      | legacyServiceProviderId |                                  |
      | marketId                | 27                               |
      | overallReviewGrade      |                                  |
      | reviewCount             |                                  |
      | userId                  |                                  |
      | visitorPageCategory     | PAINTING - INTERIOR              |
      | visitorPageGeo          | BOULDER                         |
      | visitorPageGeoCategory  | BOULDER - PAINTING - INTERIOR   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/lead/request_a_quote/221961/project?categoryId=294&placementType=Web_LeafPage&withAlId=221961"

  @leafAdvertiserFirstOfferClick
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
    And the landing URL contains "placementType=Web_LeafPage"

  @leafAdvertiserFirstOfferButtonClick
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
    And the landing URL contains "placementType=Web_LeafPage"

  @leafAdvertiserSecondOfferClick
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
    And the landing URL contains "placementType=Web_LeafPage"

  @leafAdvertiserThirdOfferClick
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
    And the landing URL contains "placementType=Web_LeafPage"

  @leafAdvertiserSeeAllDealButtonClick
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

  @leafAdvertiserDealsScrollButtonClick
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

  @leafAdvertiserContactUs
  Scenario: Click on button - Contact Us
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params   |
      | click         | css: #block-system-main > div > div.grayRow.leaf--row__top > div > div.leaf__top-left div.leaf-contact-us > div.leaf-contact-us__contact-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value     |
      | modalName    | Contact SP       | 
    And the landing URL contains ".angieslist.com/companylist/us/co/boulder/painting-plus-reviews-221961.htm"

  @leafAdvertiserReviewPage2 @leafAdvertiserReviewPagination
  Scenario: Click on Reviews page two - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params |
      | click         | css: #block-system-main > div > aside.grayRow.leaf--row > div.container.clearfix > div.leaf__lower-left > div.leaf-reviews > div.item-list > ul.pager > li:nth-child(2) > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=1"

  @leafAdvertiserReviewPage3 @leafAdvertiserReviewPagination
  Scenario: Click on Reviews page three - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params |
      | click         | css: #block-system-main > div > aside.grayRow.leaf--row > div.container.clearfix > div.leaf__lower-left > div.leaf-reviews > div.item-list > ul.pager > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=2"

  @leafAdvertiserReviewPage4 @leafAdvertiserReviewPagination
  Scenario: Click on Reviews page four - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params |
      | click         | css: #block-system-main > div > aside.grayRow.leaf--row > div.container.clearfix > div.leaf__lower-left > div.leaf-reviews > div.item-list > ul.pager > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=3"
    
  @leafAdvertiserReviewPage5 @leafAdvertiserReviewPagination
  Scenario: Click on Reviews page five - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params |
      | click         | css: #block-system-main > div > aside.grayRow.leaf--row > div.container.clearfix > div.leaf__lower-left > div.leaf-reviews > div.item-list > ul.pager > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=4"

  @leafAdvertiserReviewPage6 @leafAdvertiserReviewPagination
  Scenario: Click on Reviews page six - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params |
      | click         | css: #block-system-main > div > aside.grayRow.leaf--row > div.container.clearfix > div.leaf__lower-left > div.leaf-reviews > div.item-list > ul.pager > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=5"

  @leafAdvertiserReviewPageNext @leafAdvertiserReviewPagination
  Scenario: Click on Reviews next page - Advertiser Leaf
    Given user is on a visitor site leaf advertiser page
    When a user performs actions
      | action_method | action_params |
      | click         | css: #block-system-main > div > aside.grayRow.leaf--row > div.container.clearfix > div.leaf__lower-left > div.leaf-reviews > div.item-list > ul.pager > li.pager-next.right-caret > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=1"

  @leafAdvertiserReviewPagePrev @leafAdvertiserReviewPagination
  Scenario: Click on Reviews prev page - Advertiser Leaf
    Given user is on a visitor site page
      """
      /companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=2
      """
    When a user performs actions
      | action_method | action_params |
      | click         | css: #block-system-main > div > aside.grayRow.leaf--row > div.container.clearfix > div.leaf__lower-left > div.leaf-reviews > div.item-list > ul.pager > li.pager-previous.left-caret > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/us/co/boulder/painting-plus-reviews-221961.htm?page=1"

  @leafNonAdvertiserPageCall
  Scenario: segment page call for Leaf Page Advertiser
    Given user is on a visitor site leaf non advertiser page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    Then the segment call contains parameters
      | prop_key               | prop_value                                                                              |
      | advertiserStatus       | NonAdvertiser                                                                           |
      | atTestOffer            |                                                                                         |
      | categoryId             | 112                                                                                     |
      | cid                    |                                                                                         |
      | homeAdvisorCategoryId  | 12061                                                                                   |
      | marketId               | 11                                                                                      |
      | name                   | Visitor : SP Profile                                                                    |
      | pageVersion            | Lullabot Redesign                                                                       |
      | path                   | /companylist/us/ga/cartersville/1-oak-roofing-reviews-9205981.htm                       |
      | referrer               |                                                                                         |
      | search                 |                                                                                         |
      | serviceProviderId      |                                                                                         |
      | srCtaDisplayed         | true                                                                                    |
      | srCtaVersion           | v2                                                                                      |
      | title                  | 1 OAK Roofing Reviews - Cartersville, GA \| Angie's List                                |
      | url                    |                                                                                         |
      | userId                 |                                                                                         |
      | userType               | Visitor - New                                                                           |
      | visitorPageCategory    | ROOFING                                                                                 |
      | visitorPageGeo         | CARTERSVILLE                                                                            |
      | visitorPageGeoCategory | CARTERSVILLE - ROOFING                                                                  |

##### Footer #####

  @leafTopCities
  Scenario Outline: leaf page top cities
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
    """
    When a user clicks on "<pageLink>"
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value              |
      | description  | Top Cities link in footer |
    And the segment call contains parameters
      | prop_key         | prop_value                |
      | description      | Top Cities link in footer |
      | activityLocation | Visitor : SP Profile      |
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
