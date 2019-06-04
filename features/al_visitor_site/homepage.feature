Feature:

  @accessibility
  Scenario: Home page accessibility test
    Given user is on a visitor site page
    """
    /
    """
    When the page has finished loading
    Then the page is tested for accessibility
    
  @homePageSegmentPagecall @daily_auto @daily_homepage_regression @header_regression
  Scenario: Segment pagecall when homepage loads
    Given user is on a visitor site page
    """
    /
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : Home |
    Then the segment call contains parameters
      | prop_key       | prop_value                                                            |
      | name           | Visitor : Home                                                        |
      | atTestOffer    |                                                                       |
      | cid            |                                                                       |
      | path           | /                                                                     |
      | srCtaDisplayed | true                                                                  |
      | userId         |                                                                       |
      | userType       | Visitor - New                                                         |
      | title          | Angie's List &vert; Join for FREE to see 10 Million Verified Reviews  |
      | srCtaVersion   | v2.1                                                                  |

  @homePageSegmentPageCallReturn
  Scenario: Segment pagecall on homepage when a user returns to our site
    Given user is on a visitor site page
    """
    /
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : Home |
    Then the segment call contains parameters
      | prop_key       | prop_value                                                            |
      | name           | Visitor : Home                                                        |
      | atTestOffer    |                                                                       |
      | cid            |                                                                       |
      | path           | /                                                                     |
      | srCtaDisplayed | true                                                                  |
      | userId         |                                                                       |
      | userType       | Visitor - Returning                                                   |
      | title          | Angie's List &vert; Join for FREE to see 10 Million Verified Reviews  |
      | srCtaVersion   | v2.1                                                                  |

##### Current Header #####

  @homePageSegmentHeaderJoinNow @daily_auto @daily_homepage_regression @header_regression
  Scenario: User clicks on Header Join button on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-join    |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key         | prop_value          |
      | activityLocation | Visitor : Home      |
      | description      | Join link in header |
      | userId           |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @homePageSegmentHeaderSignIn @daily_auto @daily_homepage_regression @header_regression
  Scenario: User clicks on Header Sign In button on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: header-sign-in |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Sign In link in header            |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @homePageSegmentHeaderBuisnessCenter @daily_auto @daily_homepage_regression @header_regression
  Scenario: User clicks on the Business Center button in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: business-center |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Business Owners link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"





##### New Header Tests(Not In Master) #####

  @homePageSegmentHeaderInteriorApplianceRepair
  Scenario: User hovers then clicks on Appliance Repair in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(1) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @homePageSegmentHeaderInteriorCarpetCleaning
  Scenario: User hovers then clicks on Carpet Cleaning in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(2) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/carpet-cleaning.htm"

  @homePageSegmentHeaderInteriorContractors
  Scenario: User hovers then clicks on Contractors in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(3) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/contractor.htm"

  @homePageSegmentHeaderInteriorDrywall
  Scenario: User hovers then clicks on Drywall in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(4) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/drywall.htm"

  @homePageSegmentHeaderInteriorElectrical
  Scenario: User hovers then clicks on Electrical in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(5) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/electrical.htm"

  @homePageSegmentHeaderInteriorFlooring
  Scenario: User hovers then clicks on Flooring in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(6) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/flooring.htm"

  @homePageSegmentHeaderInteriorHVAC
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(7) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @homePageSegmentHeaderInteriorHouseCleaning
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(8) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/house-cleaning.htm"

  @homePageSegmentHeaderInteriorPainting
  Scenario: User hovers then clicks on Interior Painting in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(9) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/interior-painting.htm"

  @homePageSegmentHeaderInteriorPlumbing
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(10) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/plumbing.htm"

  @homePageSegmentHeaderInteriorRemodeling
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(11) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/kitchen-and-bath-remodeling.htm"

  @homePageSegmentHeaderInteriorViewAll
  Scenario: User hovers then clicks on View All Categories in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu view all categories link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @homePageSegmentHeaderExteriorConcreteRepair
  Scenario: User hovers then clicks on Concrete Repair in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(1) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/concrete-repair.htm"

  @homePageSegmentHeaderExteriorDoors
  Scenario: User hovers then clicks on Doors in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(2) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/doors.htm"

  @homePageSegmentHeaderExteriorDriveways
  Scenario: User hovers then clicks on Driveways in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(3) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/driveways.htm"

  @homePageSegmentHeaderExteriorPainting
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(4) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/exterior-painting.htm"

  @homePageSegmentHeaderExteriorPainting
  Scenario: User hovers then clicks on Garage Doors in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(5) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/garage-doors.htm"

  @homePageSegmentHeaderExteriorGutterCleaning
  Scenario: User hovers then clicks on Gutter Cleaning in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(6) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/gutter-cleaning.htm"

  @homePageSegmentHeaderExteriorGutterRepair
  Scenario: User hovers then clicks on Gutter Repair in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(7) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/gutter-repair-replacement.htm"

  @homePageSegmentHeaderExteriorHomeBuilders
  Scenario: User hovers then clicks on Home Builders in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(8) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/home-builders.htm"

  @homePageSegmentHeaderExteriorMasonry
  Scenario: User hovers then clicks on Masonry in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(9) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @homePageSegmentHeaderExteriorRoofing
  Scenario: User hovers then clicks on Roofing in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(10) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/roofing.htm"

  @homePageSegmentHeaderExteriorSiding
  Scenario: User hovers then clicks on Siding in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(11) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/siding.htm"

  @homePageSegmentHeaderExteriorWindows
  Scenario: User hovers then clicks on Windows in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(12) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/window-treatments.htm"

  @homePageSegmentHeaderExteriorViewAll
  Scenario: User hovers then clicks on View All in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu view all categories link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @homePageSegmentHeaderLawnGardenDecks
  Scenario: User hovers then clicks on Decks in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(1) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/decks-and-porches.htm"

  @homePageSegmentHeaderLawnGardenFencing
  Scenario: User hovers then clicks on Fencing in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(2) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/fencing.htm"

  @homePageSegmentHeaderLawnLandSurveying
  Scenario: User hovers then clicks on Land Surveying in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(3) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/land-surveying.htm"

  @homePageSegmentHeaderLawnLandscaping
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(4) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/landscaping.htm"

  @homePageSegmentHeaderLawnYard
  Scenario: User hovers then clicks on Lawn & Yard in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(5) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-and-yard-work.htm"

  @homePageSegmentHeaderLawnIrrigation
  Scenario: User hovers then clicks on Lawn Irrigation in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(6) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @homePageSegmentHeaderLawnMowerRepair
  Scenario: User hovers then clicks on Lawn Mower Repair in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(7) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-mower-repair.htm"

  @homePageSegmentHeaderLawnLeafRemoval
  Scenario: User hovers then clicks on Leaf Removal in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(8) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/leaf-removal.htm"

  @homePageSegmentHeaderLawnPatios
  Scenario: User hovers then clicks on Patios in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(9) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/sunroom-and-patio-remodeling.htm"

  @homePageSegmentHeaderLawnPatios
  Scenario: User hovers then clicks on Shed Builders in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(10) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/garage-builders.htm"

  @homePageSegmentHeaderLawnTreeSvc
  Scenario: User hovers then clicks on Tree Service in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(11) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tree-service.htm"

  @homePageSegmentHeaderLawnViewAll
  Scenario: User hovers then clicks on View All in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Lawn & Garden menu view all categories link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @homePageSegmentHeaderMoreBasement
  Scenario: User hovers then clicks on Basement Waterproofing in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(1) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/basement-waterproofing.htm"

  @homePageSegmentHeaderMoreDogGrooming
  Scenario: User hovers then clicks on Dog Grooming in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(2) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pet-grooming.htm"


  @homePageSegmentHeaderMoreHandymen
  Scenario: User hovers then clicks on Handymen in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(3) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/handyman-service.htm"

  @homePageSegmentHeaderMoreJunk
  Scenario: User hovers then clicks on Junk Hauling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(4) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @homePageSegmentHeaderMoreLocksmiths
  Scenario: User hovers then clicks on Locksmiths in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(5) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/locksmiths.htm"

  @homePageSegmentHeaderMoreMoving
  Scenario: User hovers then clicks on Moving Companies in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(6) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/moving.htm"

  @homePageSegmentHeaderMorePests
  Scenario: User hovers then clicks on Pest Control Companies in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(7) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pest-control.htm"

  @homePageSegmentHeaderMorePressureWashing
  Scenario: User hovers then clicks on Pressure Washing Companies in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(8) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pressure-washing.htm"

  @homePageSegmentHeaderMoreSeptic
  Scenario: User hovers then clicks on Septic Tanks Companies in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(9) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/septic-tank.htm"

  @homePageSegmentHeaderMoreViewAllCat
  Scenario: User hovers then clicks on View All Cats in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > div:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | More menu view all categories link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @homePageSegmentHeaderMoreNearMe
  Scenario: User hovers then clicks on Near Me in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > div:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Near Me link in desktop header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @homePageSegmentHeaderArticlesAdviceAppliances
  Scenario: User hovers then clicks on Appliances in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(1) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/appliances/"

  @homePageSegmentHeaderArticlesAdviceBaseFound
  Scenario: User hovers then clicks on Basements & Foundations in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(2) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/basements-and-foundations/"

  @homePageSegmentHeaderArticlesAdviceBathRemod
  Scenario: User hovers then clicks on Bathroom Remodel in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(3) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/bathroom-remodel/"

  @homePageSegmentHeaderArticlesAdviceChimney
  Scenario: User hovers then clicks on Chimneys & Fireplaces in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(4) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/chimneys-fireplaces/"

  @homePageSegmentHeaderArticlesAdviceCleaning
  Scenario: User hovers then clicks on Cleaning in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(5) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/cleaning/"

  @homePageSegmentHeaderArticlesAdviceContractors
  Scenario: User hovers then clicks on Contractors in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(6) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/contractors/"

  @homePageSegmentHeaderArticlesAdviceElectrical
  Scenario: User hovers then clicks on Electrical in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(7) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/electrical/"

  @homePageSegmentHeaderArticlesAdviceFlooring
  Scenario: User hovers then clicks on Flooring in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(8) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/flooring/"

  @homePageSegmentHeaderArticlesAdviceGarageDrive
  Scenario: User hovers then clicks on Garages & Driveways in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(9) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/garages-and-driveways/"

  @homePageSegmentHeaderArticlesAdviceHVAC
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(10) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/hvac/"

  @homePageSegmentHeaderArticlesAdviceHomeConstruction
  Scenario: User hovers then clicks on Home Construction in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(11) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-construction-design/"

  @homePageSegmentHeaderArticlesAdviceHomeExterior
  Scenario: User hovers then clicks on Home Exteriors in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(12) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-exteriors/"

  @homePageSegmentHeaderArticlesAdviceHomeInterior
  Scenario: User hovers then clicks on Home Interior in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(13) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-interiors/"

  @homePageSegmentHeaderArticlesAdviceHomeSecurity
  Scenario: User hovers then clicks on Home Security in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(14) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-security-systems/"

  @homePageSegmentHeaderArticlesAdviceKitchenRemod
  Scenario: User hovers then clicks on Kitchen Remodeling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(15) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/kitchen-remodeling/"

  @homePageSegmentHeaderArticlesAdviceLandscaping
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(16) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/landscaping-lawn-care/"

  @homePageSegmentHeaderArticlesAdviceLighting
  Scenario: User hovers then clicks on Lighting in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(17) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/lights/"

  @homePageSegmentHeaderArticlesAdviceMoving
  Scenario: User hovers then clicks on Moving in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(18) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/movers/"

  @homePageSegmentHeaderArticlesAdviceOutdoorLiving
  Scenario: User hovers then clicks on Outdoor Living in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(19) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @homePageSegmentHeaderArticlesAdvicePests
  Scenario: User hovers then clicks on Pests in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(20) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/household-pest-control/"

  @homePageSegmentHeaderArticlesAdvicePlumbing
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(21) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/plumbing/"

  @homePageSegmentHeaderArticlesAdviceRemodeling
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(22) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/remodeling/"

  @homePageSegmentHeaderArticlesAdviceRoofing
  Scenario: User hovers then clicks on Roofing in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(23) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/roofing/"

  @homePageSegmentHeaderArticlesAdviceStoreageOrg
  Scenario: User hovers then clicks on Storage & Organization in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(24) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/storage-organization/"

  @homePageSegmentHeaderArticlesAdviceWasteManagement
  Scenario: User hovers then clicks on Waste Management in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(25) > li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/waste-management/"

  @homePageSegmentHeaderArticlesAdviceMore
  Scenario: User hovers then clicks on View All in the header(Advice) on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : Home                  |
      | description            | Articles & Advice menu view all articles link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"


##### Body Tests #####


  @homePageBodySegmentHeroJoinCta @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on hero Join button on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: hero-join-cta-v2-1      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Join link in hero image           |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @homePageBodySegmentHeroSRCTAFindProsNoText @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on hero Find Pros CTA (No Text) button on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-submit-v2      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | categoryId             |                                   |
      | categorySelected       |                                   |
      | description            | Find Pros button in hero image - to SR path           |
      | homeAdvisorCategoryId	 |                                   |
      | manualTextInput	       |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "match"


  @homePageBodySegmentHeroSRCTAFindProsDropdown @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on hero Find Pros CTA (Dropdown) button on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | #edit-category-2   |
      | click           |                    |
      | send_keys       | Plumbing           |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | .home-category-select-2 > div > div:nth-child(1) |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | categoryId             |                                   |
      | categorySelected       |                                   |
      | description            | Find Pros button in hero image - to SR path           |
      | homeAdvisorCategoryId	 |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslist.com/category.Plumbing.10216.html?entry_point_id=32949645"


  @homePageBodySegmentSRCTAFindProsButton @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on hero Find Pros CTA button on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | #edit-category-2   |
      | click           |                    |
      | send_keys       | Plumbing           |
    Then we wait "1" seconds for the next page to load
    When a user performs actions  
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-submit-v2  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | categoryId             |                                   |
      | categorySelected       |                                   |
      | description            | Find Pros button in hero image - to SR path           |
      | homeAdvisorCategoryId	 |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslist.com/category.Plumbing.10216.html?entry_point_id=32949645"


  @homePageBodySegmentSRCTAFindProsEnter @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on hero Find Pros CTA button on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | #edit-category-2   |
      | click           |                    |
      | send_keys       | plumbing           |
    Then we wait "1" seconds for the next page to load
    Then press the "ENTER" key while "#edit-category-2" is in focus
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | categoryId             |                                   |
      | categorySelected       |                                   |
      | description            | Find Pros button in hero image - to SR path           |
      | homeAdvisorCategoryId	 |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslist.com/category.Plumbing.10216.html?entry_point_id=32949645"


  @homePageBodySegmentPlumbingPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for Plumbing on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-plumbing      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Plumbing                          |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Plumbing.10216.html?entry_point_id=32949645"


  @homePageBodySegmentRoofingPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for Roofing on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-roofing      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Roofing                           |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32949645"

  @homePageBodySegmentHeatingCoolingPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for HeatingCooling on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-heating      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Heating & A/C                     |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Heating-Cooling.10211.html?entry_point_id=32949645"


  @homePageBodySegmentElectricalPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for Electrical on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-electrical      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Electrical                        |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Electrical.12026.html?entry_point_id=32949645"


  @homePageBodySegmentLandscapingPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for Landscaping on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-landscaping      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Landscaping                       |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Landscaping.12046.html?entry_point_id=32949645"


@homePageBodySegmentHouseCleaningPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for House Cleaning on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-housecleaning      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Housecleaning                     |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Cleaning-Maid-Services.12014.html?entry_point_id=32949645"  
  
  
  @homePageBodySegmentRemodelingPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for Remodeling on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-remodeling      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Remodeling                        |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Additions-Remodeling.12001.html?entry_point_id=32949645"


@homePageBodySegmentPaintingPopularServiceQuickLink @daily_auto @daily_homepage_regression @body_regression
  Scenario: User clicks on Popular Service icon for Painting on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-ps-painting      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Popular Services icon             |
      | categoryId             |                                   |
      | categorySelected       | Painting                     |
      | homeAdvisorCategoryId  |                                   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Interior-Painting-or-Staining.10381.html?entry_point_id=32949645"



##### Footer Tests #####

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer NYC top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/"


  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Houston top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/"


  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Chicago top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/"


  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Indianapolis top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/"


  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Boston top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Atlanta top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Cincinnati top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Los Angeles top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Dallas top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Pittsburgh top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Minneapolis top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Las Vegas top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer San Antonio top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/"

  @homePageFooterSegmentTopCity @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Tampa top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Home                 |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/"

  @homePageFooterSegmentJoinForFree @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Join For Free icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--join-for-free  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup/"

  @homePageFooterSegmentCompanyList @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Company List icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--find-local-business  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Find Local Businesses link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @homePageFooterSegmentNearMe @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Near Me icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @homePageFooterSegmentHowItWorks @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left How It Works icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--how-it-works |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @homePageFooterSegmentSolutionCenter @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Solution Center icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--solution-center |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @homePageFooterSegmentPhotoGalleries @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Photos icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--photo-galleries |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @homePageFooterSegmentVideos @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Videos icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @homePageFooterSegmentAnswers @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Answers icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Answers link in footer            |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @homePageFooterSegmentBusinessOwners @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Business Owners icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--business-owners |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Home                     |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @homePageFooterSegmentInvestorRelations @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Investor Relations icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Home                     |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @homePageFooterSegmentAboutUs @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left About Us icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Home                     |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @homePageFooterSegmentCareers @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Careers icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @homePageFooterSegmentFAQ @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left FAQ icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : Home       |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @homePageFooterSegmentContactUs @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-left Contact Us icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @homePageFooterSegmentJoin @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-right Join icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @homePageFooterSegmentiOS @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-right iOS App icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--app-store  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | App Store badge in footer  |
      | userId                 |                            |

  @homePageFooterSegmentGoogle @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-right Google App icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--google-play  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Google Play badge in footer  |
      | userId                 |                            |

  @homePageFooterSegmentTwitter @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-right Twitter icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--twitter  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Twitter icon in footer     |
      | userId                 |                            |

  @homePageFooterSegmentFaceBook @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-right Facebook icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--facebook  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Facebook icon in footer    |
      | userId                 |                            |

  @homePageFooterSegmentPinterest @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-right Pinterest icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--pinterest  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Pinterest icon in footer   |
      | userId                 |                            |

  @homePageFooterSegmentYouTube @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer-right YouTube icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--youtube  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | YouTube icon in footer     |
      | userId                 |                            |

  @homePageFooterSegmentTermsOfUse @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer TermsOfUse icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--terms |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Terms of Use link in footer     |
      | userId                 |                            |

  @homePageFooterSegmentPrivacyPolicy @daily_auto @daily_homepage_regression @footer
  Scenario: User clicks on the footer Privacy Policy icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer--privacy-policy |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Home             |
      | description            | Privacy Policy link in footer     |
      | userId                 |                            |

