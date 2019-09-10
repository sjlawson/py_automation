Feature:

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


##### Header Tests #####
  @headerJoinNowLeafNonAdvertiserPage @leafPageHeader @companyListTreeHeader
  Scenario: user is on a visitor site leaf non advertiser page and clicks on Join Now
    Given user is on a visitor site leaf non advertiser page
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
    | visitorPageCategory | Roofing              |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @headerSignInLeafNonAdvertiserPage @leafPageHeader @companyListTreeHeader
  Scenario: user is on a visitor site leaf non advertiser page and clicks on Sign In button
    Given user is on a visitor site leaf non advertiser page
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
    | visitorPageCategory | Roofing                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"


  @headerBusinessCenterLeafNonAdvertiserPage @leafPageHeader @companyListTreeHeader
  Scenario: user is on a visitor site leaf non advertiser page and clicks on Business Center button
    Given user is on a visitor site leaf non advertiser page
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



  @leafPageSegmentHeaderInteriorApplianceRepairNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Appliance Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/appliance-repair.htm"


  @leafPageSegmentHeaderInteriorCarpetCleaningNonAdvertiser  @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Carpet Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/carpet-cleaning.htm"


  @leafPageSegmentHeaderInteriorContractorsNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Contractors in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/contractor.htm"


  @leafPageSegmentHeaderInteriorDrywallNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Drywall in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/drywall.htm"

  @leafPageSegmentHeaderInteriorElectricalNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Electrical in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/electrical.htm"

  @leafPageSegmentHeaderInteriorFlooringNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Flooring in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/flooring.htm"

  @leafPageSegmentHeaderInteriorHVACNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior HVAC in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/hvac.htm"

  @leafPageSegmentHeaderInteriorHouseCleaningNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/house-cleaning.htm"

  @leafPageSegmentHeaderInteriorPaintingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Painting in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/interior-painting.htm"

  @leafPageSegmentHeaderInteriorPlumbingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Plumbing in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/plumbing.htm"

  @leafPageSegmentHeaderInteriorRemodelingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior Remodeling in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/kitchen-and-bath-remodeling.htm"

  @leafPageSegmentHeaderInteriorViewAllNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Interior View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderExteriorConcreteRepairNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Concrete Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/concrete-repair.htm"

  @leafPageSegmentHeaderExteriorDoorsNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Exterior Doors in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/doors.htm"

  @leafPageSegmentHeaderExteriorDrivewaysNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Driveways in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/driveways.htm"

  @leafPageSegmentHeaderExteriorPaintingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/exterior-painting.htm"

  @leafPageSegmentHeaderExteriorGarageNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on and clicks on Garage in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/garage-doors.htm"

  @leafPageSegmentHeaderExteriorGutterCleaningNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Gutter Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/gutter-cleaning.htm"

  @leafPageSegmentHeaderExteriorGutterRepairNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Gutter Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/gutter-repair-replacement.htm"

  @leafPageSegmentHeaderExteriorHomeBuildersNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Home Builders in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/home-builders.htm"

  @leafPageSegmentHeaderExteriorMasonryNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Masonry in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/masonry.htm"

  @leafPageSegmentHeaderExteriorRoofingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Roofing in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/roofing.htm"

  @leafPageSegmentHeaderExteriorSidingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Siding in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/siding.htm"

  @leafPageSegmentHeaderExteriorWindowsNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Windows in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/window-treatments.htm"

  @leafPageSegmentHeaderExteriorViewAllNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks and clicks on Exterior View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderLawnDecksNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on and clicks on Decks in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/decks-and-porches.htm"

  @leafPageSegmentHeaderLawnFencingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Fencing in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/fencing.htm"

  @leafPageSegmentHeaderLawnLandSurveyingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Land Surveying in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/land-surveying.htm"

  @leafPageSegmentHeaderLawnLandscapingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/landscaping.htm"

  @leafPageSegmentHeaderLawnYardNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Lawn & Yard in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/lawn-and-yard-work.htm"

  @leafPageSegmentHeaderLawnIrrigationNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Lawn Irrigation in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/lawn-irrigation.htm"

  @leafPageSegmentHeaderLawnMowerRepairNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Lawn Mower Repair in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/lawn-mower-repair.htm"

  @leafPageSegmentHeaderLawnLeafRemovalNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Leaf Removal in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/leaf-removal.htm"

  @leafPageSegmentHeaderLawnPatiosNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Patios in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/sunroom-and-patio-remodeling.htm"

  @leafPageSegmentHeaderLawnShedNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Shed Builders in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/garage-builders.htm"

  @leafPageSegmentHeaderLawnTreeSvcNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Tree Service in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/tree-service.htm"

  @leafPageSegmentHeaderLawnViewAllNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderMoreBasementNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Basement Waterproofing in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/basement-waterproofing.htm"

  @leafPageSegmentHeaderMoreDogGroomingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Dog Grooming in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/pet-grooming.htm"


  @leafPageSegmentHeaderMoreHandymenNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Handymen in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/handyman-service.htm"

  @leafPageSegmentHeaderMoreJunkNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Junk Hauling in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/hauling.htm"

  @leafPageSegmentHeaderMoreLocksmithsNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Locksmiths in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/locksmiths.htm"

  @leafPageSegmentHeaderMoreMovingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Moving Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/moving.htm"

  @leafPageSegmentHeaderMorePestsNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Pest Control Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/pest-control.htm"

  @leafPageSegmentHeaderMorePressureWashingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Pressure Washing Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/pressure-washing.htm"

  @leafPageSegmentHeaderMoreSepticNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Septic Tanks Companies in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
    And the landing URL contains ".angieslist.com/companylist/us/ga/cartersville/septic-tank.htm"

  @leafPageSegmentHeaderMoreViewAllCatNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on View All Cats - More in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderMoreNearMeNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Near Me in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceAppliancesNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Appliances in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceBaseFoundNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Basements & Foundations in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceBathRemodNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Bathroom Remodel in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceChimneyNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Chimneys & Fireplaces in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceCleaningNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Cleaning in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceContractorsNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Contractors in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceElectricalNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Electrical in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceFlooringNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Flooring in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceGarageDriveNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Garages & Driveways in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceHVACNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceHomeConstructionNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Home Construction in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceHomeExteriorNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Home Exteriors in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceHomeInteriorNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Home Interior in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceHomeSecurityNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Home Security in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceKitchenRemodNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Kitchen Remodeling in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceLandscapingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceLightingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Lighting in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceMovingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Moving in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceOutdoorLivingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Outdoor Living in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdvicePestsNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Pests in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdvicePlumbingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceRemodelingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceRoofingNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Roofing in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceStoreageOrgNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Storage & Organization in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceWasteManagementNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Waste Management in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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

  @leafPageSegmentHeaderArticlesAdviceViewAllNonAdvertiser @leafPageHeader @companyListTreeHeader
  Scenario: User hovers then clicks on View All in the header on the Drupal Leaf
    Given user is on a visitor site leaf non advertiser page
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
  @leafNonAdvertiserSRWithZip @leafNonAdvertierBody @companyListTreeBody
  Scenario: SR CTA button click on leaf non advertiser page
    Given user is on a visitor site leaf non advertiser page
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
    | activityLocation | Visitor : SP Profile              |
    | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723379&postalCode=90068"


##### Footer #####

@leafAdvertiserFooterTopCityNYC @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer NYC top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/interior-painting.htm"


  @leafAdvertiserFooterTopCityHouston @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Houston top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/interior-painting.htm"


  @leafAdvertiserFooterTopCityChi @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Chicago top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/interior-painting.htm"


  @leafAdvertiserFooterTopCityIndy @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Indianapolis top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/interior-painting.htm"


  @leafAdvertiserFooterTopCityBos @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Boston top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/interior-painting.htm"

  @leafAdvertiserFooterTopCityATL @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Atlanta top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/interior-painting.htm"

  @leafAdvertiserFooterTopCityCinci @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Cincinnati top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/interior-painting.htm"

  @leafAdvertiserFooterTopCityLA @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Los Angeles top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/interior-painting.htm"

  @leafAdvertiserTopCityDal @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Dallas top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/interior-painting.htm"

  @leafAdvertiserTopCityPitt @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Pittsburgh top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/interior-painting.htm"

  @leafAdvertiserFooterTopCityMinn @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Minneapolis top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/interior-painting.htm"

  @leafAdvertiserFooterTopCityLV @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Las Vegas top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/interior-painting.htm"

  @leafAdvertiserFooterTopCitySA @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer San Antonio top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/interior-painting.htm"

  @leafAdvertiserFooterTopCityTampa @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Tampa top city link on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/interior-painting.htm"

  @leafAdvertiserFooterSegmentJoinForFree @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Join For Free icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile                |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @leafAdvertiserFooterSegmentCompanyList @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Company List icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : SP Profile                     |
      | description            | Find Local Businesses link in footer   |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @leafAdvertiserFooterSegmentNearMe @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Near Me icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile                |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @leafAdvertiserFooterSegmentHowItWorks @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left How It Works icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile                |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @leafAdvertiserFooterSegmentSolutionCenter @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Solution Center icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile                |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @leafAdvertiserFooterSegmentPhotoGalleries @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Photos icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile                |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @leafAdvertiserFooterSegmentVideos @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Videos icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile                |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @leafAdvertiserFooterSegmentAnswers @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Answers icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : SP Profile          |
      | description            | Answers link in footer      |
      | userId                 |                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @leafAdvertiserFooterSegmentBusinessOwners @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Business Owners icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile                 |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @leafAdvertiserFooterSegmentInvestorRelations @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Investor Relations icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile                 |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @leafAdvertiserFooterSegmentAboutUs @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left About Us icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile                 |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @leafAdvertiserFooterSegmentCareers @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Careers icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : SP Profile         |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @leafAdvertiserFooterSegmentFAQ @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left FAQ icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : SP Profile |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : SP Profile   |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @leafAdvertiserFooterSegmentContactUs @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Contact Us icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : SP Profile         |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @leafAdvertiserFooterSegmentJoin @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Join icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : SP Profile         |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @leafAdvertiserFooterSegmentTermsOfUse @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer TermsOfUse icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @leafAdvertiserFooterSegmentPrivacyPolicy @leafAdvertiserFooter @companyListTreeFooter
  Scenario: User clicks on the footer Privacy Policy icon on leaf non advertiser Page
    Given user is on a visitor site leaf non advertiser page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : SP Profile  |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : SP Profile            |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |
