@companyListTree
Feature:


##### Segment Page Call Tests #####



  @catNoGeoPageCallSrOverlap @companyTreeDaily
  Scenario: a user lands the CatNoGeo page that is an SR overlap category
    Given user is on a visitor site catnogeo page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value       |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                                       |
      | atTestOffer           |                                                                                  |
      | categoryId            | 53                                                                               |
      | cid                   |                                                                                  |
      | homeAdvisorCategoryId | 12025                                                                            |
      | name                  | Visitor : CatNoGeo                                                               |
      | pageVersion           | Lullabot Redesign                                                                |
      | path                  | /companylist/drywall.htm                                                         |
      | referrer              |                                                                                  |
      | search                |                                                                                  |
      | srCtaDisplayed        | true                                                                             |
      | title                 | Local Drywall Contractors - Find a Top-Rated Drywall Contractor on Angie's List  |
      | url                   |                                                                                  |
      | userId                |                                                                                  |
      | userType              | Visitor - New                                                                    |
      | visitorPageCategory   | DRYWALL                                                                          |

  @catNoGeoPageCallNonOverlap @companyTreeDaily
  Scenario: a user lands the CatNoGeo page that is an SR overlap category
    Given user is on a visitor site non-overlap catnogeo page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value       |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                               |
      | atTestOffer           |                                                                          |
      | categoryId            |                                                                          |
      | cid                   |                                                                          |
      | homeAdvisorCategoryId |                                                                          |
      | name                  | Visitor : CatNoGeo                                                       |
      | pageVersion           | Lullabot Redesign                                                        |
      | path                  | /companylist/eye-care.htm                                                |
      | referrer              |                                                                          |
      | search                |                                                                          |
      | srCtaDisplayed        | false                                                                    |
      | title                 | Local Eye Doctors - Find a Top-Rated Eye Doctor on Angie's List          |
      | url                   |                                                                          |
      | userId                |                                                                          |
      | userType              | Visitor - New                                                            |
      | visitorPageCategory   | EYE CARE                                                                 |




##### Header Tests #####



  @headerJoinCatNoGeo @catNoGeoHeader @companyListTreeHeader
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
    | visitorPageCategory | Drywall             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @headerSignInCatNoGeo @catNoGeoHeader @companyListTreeHeader
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
    | visitorPageCategory | Drywall             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @headerBcCatNoGeo @catNoGeoHeader @companyListTreeHeader
  Scenario: The Business Center link is clicked on the CatNoGeo(Plumbing) header
    Given user is on a visitor site catnogeo page
    When a user performs actions
    | action_method | action_params       |
    | click         | #business-center    |
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

  @headerJoinCatNoGeoNonOverlap @catNoGeoHeader @companyListTreeHeader
  Scenario: join button on CatNoGeo page that is an SR overlap category
    Given user is on a visitor site non-overlap catnogeo page
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
    | visitorPageCategory | Eye Care            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @headerSignInCatNoGeoNonOverlap @catNoGeoHeader @companyListTreeHeader
  Scenario: The Sign In link is clicked on the CatNoGeo(Drywall) header
    Given user is on a visitor site non-overlap catnogeo page
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
    | visitorPageCategory | Eye Care            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @headerBcCatNoGeoNonOverlap @catNoGeoHeader @companyListTreeHeader
  Scenario: The Business Center link is clicked on the CatNoGeo Non-Overlap (Eye Care) header
    Given user is on a visitor site non-overlap catnogeo page
    When a user performs actions
    | action_method | action_params       |
    | click         | #business-center    |
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

  @catNoGeoHeaderInteriorApplianceRepair @catNoGeoHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Appliance Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"


  @catNoGeoSegmentHeaderInteriorCarpetCleaning @catNoGeoHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Carpet Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label                          |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : CatNoGeo                    |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/carpet-cleaning.htm"

  @catNoGeoSegmentHeaderInteriorContractors @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorDrywall @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorElectrical @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorFlooring @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorHVAC @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorHouseCleaning @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorPainting @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorPlumbing @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorRemodeling @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderInteriorViewAll @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorConcreteRepair @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorDoors @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorDriveways @catNoGeoHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Driveways in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : CatNoGeo                     |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/driveways.htm"

  @catNoGeoNonOverlapSegmentHeaderExteriorDriveways @catNoGeoHeader @companyListTreeHeader
  Scenario: User hovers then clicks on Driveways in the header on the Drupal CatNoGeo Non-Overlap
    Given user is on a visitor site non-overlap catnogeo page
    When a user performs actions
      | action_method   | action_params                                                               |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span                   |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : CatNoGeo                     |
      | description            | Exterior menu category link in header  |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/driveways.htm"

  @catNoGeoSegmentHeaderExteriorPainting @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorGarage @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorGutterCleaning @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorGutterRepair @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorHomeBuilders @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorMasonry @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorRoofing @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorSiding @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorWindows @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderExteriorViewAll @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnGardenDecks @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnGardenFencing @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnLandSurveying @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnLandscaping @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnYard @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnIrrigation @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnMowerRepair @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnLeafRemoval @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnPatios @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderGaragePatios @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnTreeSvc @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderLawnViewAll @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreBasement @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreDogGrooming @catNoGeoHeader @companyListTreeHeader
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


  @catNoGeoSegmentHeaderMoreHandymen @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreJunk @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreLocksmiths @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreMoving @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMorePests @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMorePressureWashing @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreSeptic @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreViewAllCat @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderMoreNearMe @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceAppliances @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceBaseFound @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceBathRemod @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceChimney @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceCleaning @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceContractors @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceElectrical @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceFlooring @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceGarageDrive @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceHVAC @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeConstruction @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeExterior @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeInterior @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeSecurity @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceKitchenRemod @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceLandscaping @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceLighting @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceMoving @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceOutdoorLiving @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdvicePests @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdvicePlumbing @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceRemodeling @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceRoofing @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceStoreageOrg @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceWasteManagement @catNoGeoHeader @companyListTreeHeader
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

  @catNoGeoSegmentHeaderArticlesAdviceMore @catNoGeoHeader @companyListTreeHeader
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



  @catNoGeoBodySRNoZip @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on Find Pros in the Body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #ha-lead-submit |
      | click           | css: #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Service Request Flow entry button |
      | userId                 |                                   |
      | userSelectedZipCode    |                                   |
      | visitorPageCategory    | Drywall                           |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Drywall-Plaster.12025.html?entry_point_id=33880173&postalCode="

  @catNoGeoBodySRWithZip @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on Find Pros in the Body on the Drupal CatNoGeo Page AND enters a postal code
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #ha-lead-zip    |
      | send_keys       | 49726                |
      | click           | css: #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Service Request Flow entry button |
      | userId                 |                                   |
      | userSelectedZipCode    | 49726                             |
      | visitorPageCategory    | Drywall                           |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Drywall-Plaster.12025.html?entry_point_id=33880173&postalCode=49726"

  @catNoGeoBodyThirdBreadcrumb @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on the third Breadcrumb in the Body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | css: .breadcrumb > a:nth-child(3) |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value            |
      | activityLocation       | Visitor : CatNoGeo    |
      | description            | Breadcrumbs link      |
      | userId                 |                       |
      | visitorPageCategory    | Drywall               |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/drywall.htm"

  @catNoGeoBodySecondBreadcrumb @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on the second Breadcrumb in the Body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | css: .breadcrumb > a:nth-child(2) |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key            | prop_value         |
      | activityLocation    | Visitor : CatNoGeo |
      | description         | Breadcrumbs link   |
      | userId              |                    |
      | visitorPageCategory | Drywall            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @catNoGeoBodyFirstBreadcrumb @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on the first Breadcrumb in the Body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | css: .breadcrumb > a:nth-child(1) |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key            | prop_value         |
      | activityLocation    | Visitor : CatNoGeo |
      | description         | Breadcrumbs link   |
      | userId              |                    |
      | visitorPageCategory | Drywall            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/"

  @catNoGeoBodyCatSearchWithPostalCode @catNoGeoBody @companyListTreeBody
  Scenario: User Searches for Drywall with PostalCode in the Body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | css: #edit-location      |
      | click           | css: #edit-location      |
      | send_keys       | 49726                    |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params            |
      | click           | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description            | Search bar submission |
    And the segment call contains parameters
      | prop_key               | prop_value            |
      | activityLocation       | Visitor : GeoCat      |
      | categorySearched       | Drywall               |
      | description            | Search bar submission |
      | locationSearched       | 49726                 |
      | userId                 |                       |
      | visitorPageCategory    | DRYWALL               |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/us/mi/drummond-island/drywall.htm"

  @catNoGeoBodyCatSearchWithCity @catNoGeoBody @companyListTreeBody
  Scenario: User Searches for Drywall with typed city and selects from list in the Body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #edit-location |
      | click           | css: #edit-location |
      | send_keys       | fishers             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method | action_params                                     |
      | click         | css: .autocomplete-suggestions > div:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                           |
      | activityLocation       | Visitor : GeoCat                       |
      | categorySelected       | Fishers, IN                            |
      | description            | Category selected from auto suggestion |
      | marketId               |                                        |
      | userId                 |                                        |
      | visitorPageCategory    | DRYWALL                                |
      | visitorPageGeo         |                                        |
      | visitorPageGeoCategory |  - DRYWALL                             |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method | action_params            |
      | click         | css: #edit-geocat-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Search bar submission |
    And the segment call contains parameters
      | prop_key            | prop_value            |
      | activityLocation    | Visitor : GeoCat      |
      | description         | Search bar submission |
      | locationSearched    | Fishers, IN           |
      | manualTextSearched  | Drywall               |
      | userId              |                       |
      | visitorPageCategory | DRYWALL               |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslist.com/companylist/us/in/fishers/drywall.htm"

  @catNoGeoBodySeeAllCats @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on See All Categories in the Body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #geocat-category-select-all |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : GeoCat   |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : GeoCat                 |
      | description            | See All Categories link clicked  |
      | marketId               |                                  |
      | userId                 |                                  |
      | visitorPageCategory    | DRYWALL                          |
      | visitorPageGeo         |                                  |
      | visitorPageGeoCategory |                                  |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method          | action_params                                                    |
      | move_to_element        | css: .geocat-filters__wrapper > div > div > ul > li:nth-child(6) |
      | click                  |                                                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                               |
      | activityLocation | Visitor : GeoCat                           |
      | categorySelected | Electrician                                |
      | description      | Category selected from all categories list |

  @catNoGeoBodyMajorMarketClick @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on the major market link in the body on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                                                                     |
      | move_to_element | css: .geocat-cities-list.geocat-cities-list--major-markets > li:nth-child(45) > a |
      | click           |                                                                                   |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/companylist/phoenix/drywall.htm"

  @catNoGeoBodyArticles @catNoGeoBody @companyListTreeBody
  Scenario: User clicks on the recommended articles link on the Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                               |
      | move_to_element | css: .geocat-article-breaker__row > div > a |
      | click           |                                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Solution Center helpful article |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : GeoCat                |
      | contentNodeId          | 178491                          |
      | description            | Solution Center helpful article |
      | marketId               |                                 |
      | userId                 |                                 |
      | visitorPageCategory    | DRYWALL                         |
      | visitorPageGeo         |                                 |
      | visitorPageGeoCategory |                                 |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/what-cost-install-drywall.htm"





##### Footer Tests #####

  @catNoGeoFooterTopCityNYC @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer NYC top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/drywall.htm"


  @catNoGeoFooterTopCityHouston @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Houston top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/drywall.htm"


  @catNoGeoFooterTopCityChi @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Chicago top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/drywall.htm"


  @catNoGeoFooterTopCityIndy @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Indianapolis top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/drywall.htm"


  @catNoGeoFooterTopCityBos @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Boston top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/drywall.htm"

  @catNoGeoFooterTopCityATL @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Atlanta top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/drywall.htm"

  @catNoGeoFooterTopCityCinci @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Cincinnati top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/drywall.htm"

  @catNoGeoFooterTopCityLA @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Los Angeles top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/drywall.htm"

  @catNoGeoFooterTopCityDal @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Dallas top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/drywall.htm"

  @catNoGeoFooterTopCityPitt @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Pittsburgh top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/drywall.htm"

  @catNoGeoFooterTopCityMinn @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Minneapolis top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/drywall.htm"

  @catNoGeoFooterTopCityLV @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Las Vegas top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/drywall.htm"

  @catNoGeoFooterTopCitySA @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer San Antonio top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/drywall.htm"

  @catNoGeoFooterTopCityTampa @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Tampa top city link on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : CatNoGeo             |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/drywall.htm"

  @catNoGeoFooterSegmentJoinForFree @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Join For Free icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @catNoGeoFooterSegmentCompanyList @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Company List icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : CatNoGeo                     |
      | description            | Find Local Businesses link in footer   |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @catNoGeoFooterSegmentNearMe @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Near Me icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @catNoGeoFooterSegmentHowItWorks @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left How It Works icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @catNoGeoFooterSegmentSolutionCenter @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Solution Center icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @catNoGeoFooterSegmentPhotoGalleries @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Photos icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @catNoGeoFooterSegmentVideos @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Videos icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : CatNoGeo                |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @catNoGeoFooterSegmentAnswers @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Answers icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : CatNoGeo          |
      | description            | Answers link in footer      |
      | userId                 |                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @catNoGeoFooterSegmentBusinessOwners @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Business Owners icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : CatNoGeo                 |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @catNoGeoFooterSegmentInvestorRelations @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Investor Relations icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : CatNoGeo                 |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @catNoGeoFooterSegmentAboutUs @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left About Us icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : CatNoGeo                 |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @catNoGeoFooterSegmentCareers @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Careers icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : CatNoGeo         |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @catNoGeoFooterSegmentFAQ @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left FAQ icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : CatNoGeo   |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @catNoGeoFooterSegmentContactUs @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-left Contact Us icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : CatNoGeo         |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @catNoGeoFooterSegmentJoin @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Join icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : CatNoGeo         |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @catNoGeoFooterSegmentiOS  @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right iOS App icon on Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params          |
      | move_to_element | cid: footer--app-store |
      | click           |                        |
    Then we wait "1" seconds for the next page to load
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key         | prop_value                |
      | activityLocation | Visitor : CatNoGeo        |
      | description      | App Store badge in footer |
      | userId           |                           |

  @catNoGeoFooterSegmentGoogle  @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Google App icon on Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--google-play |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key         | prop_value                  |
      | activityLocation | Visitor : CatNoGeo          |
      | description      | Google Play badge in footer |
      | userId           |                             |

  @catNoGeoFooterSegmentTwitter  @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Twitter icon on Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--twitter |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key         | prop_value             |
      | activityLocation | Visitor : CatNoGeo     |
      | description      | Twitter icon in footer |
      | userId           |                        |

  @catNoGeoFooterSegmentFaceBook  @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Facebook icon on Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--facebook |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key         | prop_value              |
      | activityLocation | Visitor : CatNoGeo      |
      | description      | Facebook icon in footer |
      | userId           |                         |

  @catNoGeoFooterSegmentPinterest  @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right Pinterest icon on Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params         |
      | move_to_element | id: footer--pinterest |
      | click           |                       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key         | prop_value               |
      | activityLocation | Visitor : CatNoGeo       |
      | description      | Pinterest icon in footer |
      | userId           |                          |

  @catNoGeoFooterSegmentYouTube  @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer-right YouTube icon on Drupal CatNoGeo Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--youtube |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key         | prop_value             |
      | activityLocation | Visitor : CatNoGeo     |
      | description      | YouTube icon in footer |
      | userId           |                        |

  @catNoGeoFooterSegmentTermsOfUse @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer TermsOfUse icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : CatNoGeo           |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @catNoGeoFooterSegmentPrivacyPolicy @catNoGeoFooter @companyListTreeFooter
  Scenario: User clicks on the footer Privacy Policy icon on Drupal Company List Page
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : CatNoGeo  |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : CatNoGeo            |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |