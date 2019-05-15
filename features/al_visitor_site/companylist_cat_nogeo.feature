@catNoGeo
Feature:

  @catNoGeoPageCallSrOverlap @companyTreeDaily
  Scenario: a user lands the CatNoGeo page that is an SR overlap category
    Given user is on a visitor site catnogeo page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value       |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                               |
      | atTestOffer           |                                                                          |
      | categoryId            | 79                                                                       |
      | cid                   |                                                                          |
      | homeAdvisorCategoryId | 12041                                                                    |
      | name                  | Visitor : CatNoGeo                                                       |
      | pageVersion           | Lullabot Redesign                                                        |
      | path                  | /companylist/home-inspection.htm                                         |
      | referrer              |                                                                          |
      | search                |                                                                          |
      | srCtaDisplayed        | true                                                                     |
      | title                 | Local Home Inspectors - Find a Top-Rated Home Inspector on Angie's List  |
      | url                   |                                                                          |
      | userId                |                                                                          |
      | userType              | Visitor - New                                                            |
      | visitorPageCategory   | HOME INSPECTION                                                          |



##### Header Tests #####



  @headerJoinCatNoGeo @catNoGeoNewHeader @newHeader
  Scenario: join button on CatNoGeo page that is an SR overlap category
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key            | prop_value          |
    | description         | Join link in header |
    | activityLocation    | Visitor : CatNoGeo  |
    | userId              |                     |
    | visitorPageCategory | Drywall            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @headerSignInCatNoGeo @catNoGeoNewHeader @newHeader
  Scenario: The Sign In link is clicked on the CatNoGeo(Drywall) header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params   |
    | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | Sign In link in header |
    And the segment call contains parameters
    | prop_key         | prop_value             |
    | description      | Sign In link in header |
    | activityLocation | Visitor : CatNoGeo     |
    | userId           |                        |
    | visitorPageCategory | Drywall            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @headerBcCatNoGeo @catNoGeoNewHeader @newHeader
  Scenario: The Business Center link is clicked on the CatNoGeo(Plumbing) header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params       |
    | click         | #business-center |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Business Owners link in header |
    | activityLocation | Visitor : CatNoGeo             |
    | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @catNoGeoHeaderInteriorApplianceRepair @newHeader
  Scenario: User hovers then clicks on Appliance Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"


  @catNoGeoSegmentHeaderInteriorCarpetCleaning @newHeader
  Scenario: User hovers then clicks on Carpet Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/carpet-cleaning.htm"

  @catNoGeoSegmentHeaderInteriorContractors @newHeader
  Scenario: User hovers then clicks on Contractors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/contractor.htm"

  @catNoGeoSegmentHeaderInteriorDrywall @newHeader
  Scenario: User hovers then clicks on Drywall in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/drywall.htm"

  @catNoGeoSegmentHeaderInteriorElectrical @newHeader
  Scenario: User hovers then clicks on Electrical in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/electrical.htm"

  @catNoGeoSegmentHeaderInteriorFlooring @newHeader
  Scenario: User hovers then clicks on Flooring in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/flooring.htm"

  @catNoGeoSegmentHeaderInteriorHVAC @newHeader
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @catNoGeoSegmentHeaderInteriorHouseCleaning @newHeader
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/house-cleaning.htm"

  @catNoGeoSegmentHeaderInteriorPainting @newHeader
  Scenario: User hovers then clicks on Interior Painting in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/interior-painting.htm"

  @catNoGeoSegmentHeaderInteriorPlumbing @newHeader
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/plumbing.htm"

  @catNoGeoSegmentHeaderInteriorRemodeling @newHeader
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/kitchen-and-bath-remodeling.htm"

  @catNoGeoSegmentHeaderInteriorViewAll @newHeader
  Scenario: User hovers then clicks on View All Categories in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu view all categories link in header    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @catNoGeoSegmentHeaderExteriorConcreteRepair @newHeader
  Scenario: User hovers then clicks on Concrete Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/concrete-repair.htm"

  @catNoGeoSegmentHeaderExteriorDoors @newHeader
  Scenario: User hovers then clicks on Doors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/doors.htm"

  @catNoGeoSegmentHeaderExteriorDriveways @newHeader
  Scenario: User hovers then clicks on Driveways in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/driveways.htm"

  @catNoGeoSegmentHeaderExteriorPainting @newHeader
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/exterior-painting.htm"

  @catNoGeoSegmentHeaderExteriorGarage @newHeader
  Scenario: User hovers then clicks on Garage Doors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/garage-doors.htm"

  @catNoGeoSegmentHeaderExteriorGutterCleaning @newHeader
  Scenario: User hovers then clicks on Gutter Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/gutter-cleaning.htm"

  @catNoGeoSegmentHeaderExteriorGutterRepair @newHeader
  Scenario: User hovers then clicks on Gutter Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/gutter-repair-replacement.htm"

  @catNoGeoSegmentHeaderExteriorHomeBuilders @newHeader
  Scenario: User hovers then clicks on Home Builders in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/home-builders.htm"

  @catNoGeoSegmentHeaderExteriorMasonry @newHeader
  Scenario: User hovers then clicks on Masonry in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @catNoGeoSegmentHeaderExteriorRoofing @newHeader
  Scenario: User hovers then clicks on Roofing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/roofing.htm"

  @catNoGeoSegmentHeaderExteriorSiding @newHeader
  Scenario: User hovers then clicks on Siding in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/siding.htm"

  @catNoGeoSegmentHeaderExteriorWindows @newHeader
  Scenario: User hovers then clicks on Windows in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(12) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/window-treatments.htm"

  @catNoGeoSegmentHeaderExteriorViewAll @newHeader
  Scenario: User hovers then clicks on View All in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Exterior menu view all categories link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @catNoGeoSegmentHeaderLawnGardenDecks @newHeader
  Scenario: User hovers then clicks on Decks in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/decks-and-porches.htm"

  @catNoGeoSegmentHeaderLawnGardenFencing @newHeader
  Scenario: User hovers then clicks on Fencing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/fencing.htm"

  @catNoGeoSegmentHeaderLawnLandSurveying @newHeader
  Scenario: User hovers then clicks on Land Surveying in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/land-surveying.htm"

  @catNoGeoSegmentHeaderLawnLandscaping @newHeader
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/landscaping.htm"

  @catNoGeoSegmentHeaderLawnYard @newHeader
  Scenario: User hovers then clicks on Lawn & Yard in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-and-yard-work.htm"

  @catNoGeoSegmentHeaderLawnIrrigation @newHeader
  Scenario: User hovers then clicks on Lawn Irrigation in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @catNoGeoSegmentHeaderLawnMowerRepair @newHeader
  Scenario: User hovers then clicks on Lawn Mower Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-mower-repair.htm"

  @catNoGeoSegmentHeaderLawnLeafRemoval @newHeader
  Scenario: User hovers then clicks on Leaf Removal in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/leaf-removal.htm"

  @catNoGeoSegmentHeaderLawnPatios @newHeader
  Scenario: User hovers then clicks on Patios in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/sunroom-and-patio-remodeling.htm"

  @catNoGeoSegmentHeaderGaragePatios @newHeader
  Scenario: User hovers then clicks on Shed Builders in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/garage-builders.htm"

  @catNoGeoSegmentHeaderLawnTreeSvc @newHeader
  Scenario: User hovers then clicks on Tree Service in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tree-service.htm"

  @catNoGeoSegmentHeaderLawnViewAll @newHeader
  Scenario: User hovers then clicks on View All in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(3) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Lawn & Garden menu view all categories link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @catNoGeoSegmentHeaderMoreBasement @newHeader
  Scenario: User hovers then clicks on Basement Waterproofing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/basement-waterproofing.htm"

  @catNoGeoSegmentHeaderMoreDogGrooming @newHeader
  Scenario: User hovers then clicks on Dog Grooming in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pet-grooming.htm"


  @catNoGeoSegmentHeaderMoreHandymen @newHeader
  Scenario: User hovers then clicks on Handymen in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/handyman-service.htm"

  @catNoGeoSegmentHeaderMoreJunk @newHeader
  Scenario: User hovers then clicks on Junk Hauling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @catNoGeoSegmentHeaderMoreLocksmiths @newHeader
  Scenario: User hovers then clicks on Locksmiths in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/locksmiths.htm"

  @catNoGeoSegmentHeaderMoreMoving @newHeader
  Scenario: User hovers then clicks on Moving Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/moving.htm"

  @catNoGeoSegmentHeaderMorePests @newHeader
  Scenario: User hovers then clicks on Pest Control Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pest-control.htm"

  @catNoGeoSegmentHeaderMorePressureWashing @newHeader
  Scenario: User hovers then clicks on Pressure Washing Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pressure-washing.htm"

  @catNoGeoSegmentHeaderMoreSeptic @newHeader
  Scenario: User hovers then clicks on Septic Tanks Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu category link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/septic-tank.htm"

  @catNoGeoSegmentHeaderMoreViewAllCat @newHeader
  Scenario: User hovers then clicks on View All Cats - More in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | More menu view all categories link in header |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @catNoGeoSegmentHeaderMoreNearMe @newHeader
  Scenario: User hovers then clicks on Near Me in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Near Me link in desktop header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @catNoGeoSegmentHeaderArticlesAdviceAppliances @newHeader
  Scenario: User hovers then clicks on Appliances in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/appliances/"

  @catNoGeoSegmentHeaderArticlesAdviceBaseFound @newHeader
  Scenario: User hovers then clicks on Basements & Foundations in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/basements-and-foundations/"

  @catNoGeoSegmentHeaderArticlesAdviceBathRemod @newHeader
  Scenario: User hovers then clicks on Bathroom Remodel in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/bathroom-remodel/"

  @catNoGeoSegmentHeaderArticlesAdviceChimney @newHeader
  Scenario: User hovers then clicks on Chimneys & Fireplaces in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/chimneys-fireplaces/"

  @catNoGeoSegmentHeaderArticlesAdviceCleaning @newHeader
  Scenario: User hovers then clicks on Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/cleaning/"

  @catNoGeoSegmentHeaderArticlesAdviceContractors @newHeader
  Scenario: User hovers then clicks on Contractors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/contractors/"

  @catNoGeoSegmentHeaderArticlesAdviceElectrical @newHeader
  Scenario: User hovers then clicks on Electrical in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/electrical/"

  @catNoGeoSegmentHeaderArticlesAdviceFlooring @newHeader
  Scenario: User hovers then clicks on Flooring in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/flooring/"

  @catNoGeoSegmentHeaderArticlesAdviceGarageDrive @newHeader
  Scenario: User hovers then clicks on Garages & Driveways in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/garages-and-driveways/"

  @catNoGeoSegmentHeaderArticlesAdviceHVAC @newHeader
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/hvac/"

  @catNoGeoSegmentHeaderArticlesAdviceHomeConstruction @newHeader
  Scenario: User hovers then clicks on Home Construction in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-construction-design/"

  @catNoGeoSegmentHeaderArticlesAdviceHomeExterior @newHeader
  Scenario: User hovers then clicks on Home Exteriors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(12) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-exteriors/"

  @catNoGeoSegmentHeaderArticlesAdviceHomeInterior @newHeader
  Scenario: User hovers then clicks on Home Interior in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(13) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-interiors/"

  @catNoGeoSegmentHeaderArticlesAdviceHomeSecurity @newHeader
  Scenario: User hovers then clicks on Home Security in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(14) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/home-security-systems/"

  @catNoGeoSegmentHeaderArticlesAdviceKitchenRemod @newHeader
  Scenario: User hovers then clicks on Kitchen Remodeling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(15) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/kitchen-remodeling/"

  @catNoGeoSegmentHeaderArticlesAdviceLandscaping @newHeader
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(16) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/landscaping-lawn-care/"

  @catNoGeoSegmentHeaderArticlesAdviceLighting @newHeader
  Scenario: User hovers then clicks on Lighting in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(17) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/lights/"

  @catNoGeoSegmentHeaderArticlesAdviceMoving @newHeader
  Scenario: User hovers then clicks on Moving in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(18) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/movers/"

  @catNoGeoSegmentHeaderArticlesAdviceOutdoorLiving @newHeader
  Scenario: User hovers then clicks on Outdoor Living in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(19) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @catNoGeoSegmentHeaderArticlesAdvicePests @newHeader
  Scenario: User hovers then clicks on Pests in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(20) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/household-pest-control/"

  @catNoGeoSegmentHeaderArticlesAdvicePlumbing @newHeader
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(21) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/plumbing/"

  @catNoGeoSegmentHeaderArticlesAdviceRemodeling @newHeader
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(22) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/remodeling/"

  @catNoGeoSegmentHeaderArticlesAdviceRoofing @newHeader
  Scenario: User hovers then clicks on Roofing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(23) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/roofing/"

  @catNoGeoSegmentHeaderArticlesAdviceStoreageOrg @newHeader
  Scenario: User hovers then clicks on Storage & Organization in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(24) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/storage-organization/"

  @catNoGeoSegmentHeaderArticlesAdviceWasteManagement @newHeader
  Scenario: User hovers then clicks on Waste Management in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > ul > li:nth-child(25) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo                  |
      | description            | Articles & Advice menu category link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/waste-management/"

  @catNoGeoSegmentHeaderArticlesAdviceMore @newHeader
  Scenario: User hovers then clicks on View All in the header(Advice) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(5) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo              |
      | description            | Articles & Advice menu view all articles link in header  |
      | userId                 |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"



##### Body Tests #####


## Needs to be filled in ##



##### Footer Tests #####


  ## test_companyListCatNoGeoFooterJoinClick
  Scenario: segment call on clicking the Join link in CatNoGeo footer
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params |
    | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value          |
    | description  | Join button in footer |
    And the segment call contains parameters
    | prop_key         | prop_value            |
    | description      | Join button in footer |
    | activityLocation | Visitor : CatNoGeo    |
    | userId           |                       |


  ## test_companyListCatNoGeo_topCities
  @topcities @catnogeo_topcities
  Scenario Outline: companylist CatNoGeo top cities
    Given user is on a visitor site catnogeo page
    When a user clicks on "<pageLink>"
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value              |
    | description  | Top Cities link in footer |
    And the segment call contains parameters
    | prop_key         | prop_value                |
    | description      | Top Cities link in footer |
    | activityLocation | Visitor : CatNoGeo        |
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
