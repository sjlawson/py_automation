@companyListTree
Feature:

  @companyListPageCall
  Scenario: Segment pagecall when companylist page loads
    Given user is on the visitor site companylist page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : Directory |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                         |
      | atTestOffer           |                                                                    |
      | cid                   |                                                                    |
      | name                  | Visitor : Directory                                                |
      | pageVersion           | Lullabot Redesign                                                  |
      | path                  | /companylist/                                                      |
      | referrer              |                                                                    |
      | search                |                                                                    |
      | title                 | Search Real Local Reviews, Home Services Guide &vert; Angie's List |
      | url                   |                                                                    |
      | userId                |                                                                    |
      | userType              | Visitor - New                                                      |


##### Header Tests #####


  @headerJoinNowCompanyListPage @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: user is on the visitor site companylist page and clicks on Join Now
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method | action_params    |
      | click         | id: header-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
    And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | Visitor : Directory |
      | description      | Join link in header |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @headerSignInCompanyListPage @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: user is on the visitor site companylist page and clicks on Sign In button
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method | action_params      |
      | click         | id: header-sign-in |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | description  | Sign In link in header |
    And the segment call contains parameters
      | prop_key         | prop_value             |
      | activityLocation | Visitor : Directory    |
      | description      | Sign In link in header |
      | userId           |                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"


  @headerBusinessCenterCompanyListPage @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: user is on the visitor site companylist page and clicks on Business Center button
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method | action_params       |
      | click         | id: business-center |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                   |
      | description  | Business Owners link in header |
    And the segment call contains parameters
      | prop_key         | prop_value                     |
      | activityLocation | Visitor : Directory            |
      | description      | Business Owners link in header |
      | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"



  @companyListPageSegmentHeaderInteriorApplianceRepair @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Appliance Repair in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"


  @companyListPageSegmentHeaderInteriorCarpetCleaning  @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Carpet Cleaning in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/carpet-cleaning.htm"


  @companyListPageSegmentHeaderInteriorContractors @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Contractors in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/contractor.htm"


  @companyListPageSegmentHeaderInteriorDrywall @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Drywall in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/drywall.htm"

  @companyListPageSegmentHeaderInteriorElectrical @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Interior Electrical in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/electrical.htm"

  @companyListPageSegmentHeaderInteriorFlooring @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Flooring in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/flooring.htm"

  @companyListPageSegmentHeaderInteriorHVAC @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior HVAC in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @companyListPageSegmentHeaderInteriorHouseCleaning @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on House Cleaning in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/house-cleaning.htm"

  @companyListPageSegmentHeaderInteriorPainting @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Painting in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/interior-painting.htm"

  @companyListPageSegmentHeaderInteriorPlumbing @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Plumbing in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/plumbing.htm"

  @companyListPageSegmentHeaderInteriorRemodeling @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior Remodeling in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Interior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/kitchen-and-bath-remodeling.htm"

  @companyListPageSegmentHeaderInteriorViewAll @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Interior View All in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label         |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                       |
      | activityLocation | Visitor : Directory                              |
      | description      | Interior menu view all categories link in header |
      | userId           |                                                  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @companyListPageSegmentHeaderExteriorConcreteRepair @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Concrete Repair in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/concrete-repair.htm"

  @companyListPageSegmentHeaderExteriorDoors @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Exterior Doors in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/doors.htm"

  @companyListPageSegmentHeaderExteriorDriveways @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Driveways in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/driveways.htm"

  @companyListPageSegmentHeaderExteriorPainting @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Exterior Painting in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/exterior-painting.htm"

  @companyListPageSegmentHeaderExteriorGarage @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on and clicks on Garage in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/garage-doors.htm"

  @companyListPageSegmentHeaderExteriorGutterCleaning @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Gutter Cleaning in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/gutter-cleaning.htm"

  @companyListPageSegmentHeaderExteriorGutterRepair @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Gutter Repair in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/gutter-repair-replacement.htm"

  @companyListPageSegmentHeaderExteriorHomeBuilders @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Builders in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/home-builders.htm"

  @companyListPageSegmentHeaderExteriorMasonry @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Masonry in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @companyListPageSegmentHeaderExteriorRoofing @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Roofing in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/roofing.htm"

  @companyListPageSegmentHeaderExteriorSiding @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Siding in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/siding.htm"

  @companyListPageSegmentHeaderExteriorWindows @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Windows in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(12) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Directory                   |
      | description      | Exterior menu category link in header |
      | userId           |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/window-treatments.htm"

  @companyListPageSegmentHeaderExteriorViewAll @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks and clicks on Exterior View All in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span  |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                       |
      | activityLocation | Visitor : Directory                              |
      | description      | Exterior menu view all categories link in header |
      | userId           |                                                  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @companyListPageSegmentHeaderLawnDecks @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on and clicks on Decks in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/decks-and-porches.htm"

  @companyListPageSegmentHeaderLawnFencing @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Fencing in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/fencing.htm"

  @companyListPageSegmentHeaderLawnLandSurveying @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Land Surveying in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/land-surveying.htm"

  @companyListPageSegmentHeaderLawnLandscaping @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Landscaping in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/landscaping.htm"

  @companyListPageSegmentHeaderLawnYard @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lawn & Yard in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-and-yard-work.htm"

  @companyListPageSegmentHeaderLawnIrrigation @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lawn Irrigation in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @companyListPageSegmentHeaderLawnMowerRepair @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lawn Mower Repair in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-mower-repair.htm"

  @companyListPageSegmentHeaderLawnLeafRemoval @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Leaf Removal in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/leaf-removal.htm"

  @companyListPageSegmentHeaderLawnPatios @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Patios in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/sunroom-and-patio-remodeling.htm"

  @companyListPageSegmentHeaderLawnShed @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Shed Builders in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/garage-builders.htm"

  @companyListPageSegmentHeaderLawnTreeSvc @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Tree Service in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label                           |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                 |
      | activityLocation | Visitor : Directory                        |
      | description      | Lawn & Garden menu category link in header |
      | userId           |                                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tree-service.htm"

  @companyListPageSegmentHeaderLawnViewAll @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on View All in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label         |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                            |
      | activityLocation | Visitor : Directory                                   |
      | description      | Lawn & Garden menu view all categories link in header |
      | userId           |                                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @companyListPageSegmentHeaderMoreBasement @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Basement Waterproofing in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/basement-waterproofing.htm"

  @companyListPageSegmentHeaderMoreDogGrooming @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Dog Grooming in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pet-grooming.htm"


  @companyListPageSegmentHeaderMoreHandymen @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Handymen in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/handyman-service.htm"

  @companyListPageSegmentHeaderMoreJunk @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Junk Hauling in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @companyListPageSegmentHeaderMoreLocksmiths @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Locksmiths in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/locksmiths.htm"

  @companyListPageSegmentHeaderMoreMoving @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Moving Companies in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/moving.htm"

  @companyListPageSegmentHeaderMorePests @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Pest Control Companies in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pest-control.htm"

  @companyListPageSegmentHeaderMorePressureWashing @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Pressure Washing Companies in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pressure-washing.htm"

  @companyListPageSegmentHeaderMoreSeptic @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Septic Tanks Companies in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                        |
      | activityLocation | Visitor : Directory               |
      | description      | More menu category link in header |
      | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/septic-tank.htm"

  @companyListPageSegmentHeaderMoreViewAllCat @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on View All Cats - More in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(5) > a           |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                   |
      | activityLocation | Visitor : Directory                          |
      | description      | More menu view all categories link in header |
      | userId           |                                              |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @companyListPageSegmentHeaderMoreNearMe @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Near Me in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(3) > a           |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                     |
      | activityLocation | Visitor : Directory            |
      | description      | Near Me link in desktop header |
      | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @companyListPageSegmentHeaderArticlesAdviceAppliances @companyListPageHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Appliances in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/appliances/"

  @companyListPageSegmentHeaderArticlesAdviceBaseFound @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Basements & Foundations in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/basements-and-foundations/"

  @companyListPageSegmentHeaderArticlesAdviceBathRemod @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Bathroom Remodel in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/bathroom-remodel/"

  @companyListPageSegmentHeaderArticlesAdviceChimney @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Chimneys & Fireplaces in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/chimneys-fireplaces/"

  @companyListPageSegmentHeaderArticlesAdviceCleaning @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Cleaning in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/cleaning/"

  @companyListPageSegmentHeaderArticlesAdviceContractors @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Contractors in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/contractors/"

  @companyListPageSegmentHeaderArticlesAdviceElectrical @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Electrical in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/electrical/"

  @companyListPageSegmentHeaderArticlesAdviceFlooring @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Flooring in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/flooring/"

  @companyListPageSegmentHeaderArticlesAdviceGarageDrive @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Garages & Driveways in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/garages-and-driveways/"

  @companyListPageSegmentHeaderArticlesAdviceHVAC @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Heating & Cooling in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/hvac/"

  @companyListPageSegmentHeaderArticlesAdviceHomeConstruction @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Construction in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-construction-design/"

  @companyListPageSegmentHeaderArticlesAdviceHomeExterior @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Exteriors in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(12) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-exteriors/"

  @companyListPageSegmentHeaderArticlesAdviceHomeInterior @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Interior in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(13) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-interiors/"

  @companyListPageSegmentHeaderArticlesAdviceHomeSecurity @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Home Security in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(14) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-security-systems/"

  @companyListPageSegmentHeaderArticlesAdviceKitchenRemod @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Kitchen Remodeling in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(15) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/kitchen-remodeling/"

  @companyListPageSegmentHeaderArticlesAdviceLandscaping @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Landscaping in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(16) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/landscaping-lawn-care/"

  @companyListPageSegmentHeaderArticlesAdviceLighting @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Lighting in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(17) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/lights/"

  @companyListPageSegmentHeaderArticlesAdviceMoving @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Moving in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(18) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/movers/"

  @companyListPageSegmentHeaderArticlesAdviceOutdoorLiving @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Outdoor Living in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(19) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @companyListPageSegmentHeaderArticlesAdvicePests @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Pests in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(20) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/household-pest-control/"

  @companyListPageSegmentHeaderArticlesAdvicePlumbing @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Plumbing in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(21) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/plumbing/"

  @companyListPageSegmentHeaderArticlesAdviceRemodeling @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Remodeling in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(22) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/remodeling/"

  @companyListPageSegmentHeaderArticlesAdviceRoofing @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Roofing in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(23) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/roofing/"

  @companyListPageSegmentHeaderArticlesAdviceStoreageOrg @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Storage & Organization in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(24) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/storage-organization/"

  @companyListPageSegmentHeaderArticlesAdviceWasteManagement @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on Waste Management in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span                    |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(25) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                     |
      | activityLocation | Visitor : Directory                            |
      | description      | Articles & Advice menu category link in header |
      | userId           |                                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/waste-management/"

  @companyListPageSegmentHeaderArticlesAdviceViewAll @companyListPageHeader @companyListTreeHeader @companyListTreeRegression
  Scenario: User hovers then clicks on View All in the header on the CompanyList page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                              |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span  |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value                                              |
      | activityLocation | Visitor : Directory                                     |
      | description      | Articles & Advice menu view all articles link in header |
      | userId           |                                                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"


##### Body Tests #####

  @companyListPageSecondBreadCrumbClick @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the Local Reviews breadcrumb link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                     |
      | click           | css: .breadcrumb > a:nth-child(2) |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value           |
      | activityLocation | Visitor : Directory  |
      | description      | Breadcrumbs link     |
      | userId           |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @companyListPageFirstBreadCrumbClick @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the Angie's List breadcrumb link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method | action_params                     |
      | click         | css: .breadcrumb > a:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | Visitor : Directory |
      | description      | Breadcrumbs link    |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/"

  @companyListPageCatSearchSelectPlumbing @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the Choose A Category link in the body and selects Plumbing - Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #edit-category |
      | click           | css: #edit-category |
      | send_keys       | plumbing            |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                        |
      | move_to_element | css: .geocat-category-select > div.autocomplete-suggestions > div > div:nth-child(2) |
      | click           | css: .geocat-category-select > div.autocomplete-suggestions > div > div:nth-child(2) |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : GeoCat   |
    And the segment call contains parameters
      | prop_key         | prop_value                             |
      | activityLocation | Visitor : GeoCat                       |
      | description      | Category selected from auto suggestion |
      | userId           |                                        |

  @companyListPageGeoCatSearchPlumbing @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the Choose A Cat link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #edit-category |
      | click           | css: #edit-category |
      | send_keys       | plumbing            |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                                        |
      | move_to_element | css: .geocat-category-select > div.autocomplete-suggestions > div > div:nth-child(2) |
      | click           | css: .geocat-category-select > div.autocomplete-suggestions > div > div:nth-child(2) |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | css: #edit-location      |
      | click           | css: #edit-location      |
      | send_keys       | 49726                    |
      | move_to_element | css: #edit-geocat-submit |
      | click           | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : GeoCat   |
    And the segment call contains parameters
      | prop_key         | prop_value            |
      | activityLocation | Visitor : GeoCat      |
      | description      | Search bar submission |
      | userId           |                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/plumbing.htm"

  @companyListPageSeeAllCatClick @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the See All Categories link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #geocat-category-select-all |
      | click           | css: #geocat-category-select-all |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value     |
      | activityLocation | Visitor : GeoCat |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : GeoCat                 |
      | description            | See All Categories link clicked  |
      | userId                 |                                  |
      | visitorPageCategory    | NO CATEGORY                      |
      | visitorPageGeo         |                                  |
      | visitorPageGeoCategory |                                  |

  @companyListPageSeeAllCat @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the See All Categories link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #geocat-category-select-all |
      | click           | css: #geocat-category-select-all |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                                                    |
      | move_to_element | css: .geocat-filters__wrapper > div > div > ul > li:nth-child(4) |
      | click           | css: .geocat-filters__wrapper > div > div > ul > li:nth-child(4) |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value     |
      | activityLocation | Visitor : GeoCat |
    And the segment call contains parameters
      | prop_key         | prop_value                                  |
      | activityLocation | Visitor : GeoCat                            |
      | categorySelected | Cleaning                                    |
      | description      | Category selected from all categories list  |
      | userId           |                                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | css: #edit-location      |
      | click           | css: #edit-location      |
      | send_keys       | 49726                    |
      | move_to_element | css: #edit-geocat-submit |
      | click           | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : GeoCat   |
    And the segment call contains parameters
      | prop_key         | prop_value            |
      | activityLocation | Visitor : GeoCat      |
      | description      | Search bar submission |
      | userId           |                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/cleaning.htm"

  @companyListPageCatClickAsbestos @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the category link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: .container > section > ul > li:nth-child(5) |
      | click           | css: .container > section > ul > li:nth-child(5) | 
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/asbestos-removal.htm"

  @companyListPageCatClickPainting @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the category link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                     |
      | move_to_element | css: .container > section > ul > li:nth-child(67) |
      | click           | css: .container > section > ul > li:nth-child(67) |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/exterior-painting.htm"

  @companyListPageStateClick @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the state link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                     |
      | move_to_element | css: .container > div > ul > li:nth-child(30) > a |
      | click           | css: .container > div > ul > li:nth-child(30) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/us/nh/"

  @companyListPageMajorMarketClick @companyListPageBody @companyListTreeBody
  Scenario: User clicks on the major market link in the body on the Drupal CompanyList Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                                                                     |
      | move_to_element | css: .geocat-cities-list.geocat-cities-list--major-markets > li:nth-child(62) > a |
      | click           | css: .geocat-cities-list.geocat-cities-list--major-markets > li:nth-child(62) > a |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/tucson/"


##### Footer Tests #####

  @companyListPageFooterTopCityNYC @companyListPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer NYC top city link on Drupal Company List Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Directory                |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @companyListPageFooterSegmentAboutUs @companyListPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left About Us icon on Drupal Company List Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Directory        |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @companyListPageFooterSegmentFAQ @companyListPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left FAQ icon on Drupal Company List Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
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
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : Directory          |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @companyListPageFooterSegmentPrivacyPolicy @companyListPageFooter @companyListTreeFooter
  Scenario: User clicks on the footer Privacy Policy icon on Drupal Company List Page
    Given user is on the visitor site companylist page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value        |
      | activityLocation | Visitor : Directory |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : Directory           |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |

