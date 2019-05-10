@catNoGeo
Feature:

  @catNoGeoPageCallSrOverlap @catNoGeoDaily @companyTreeDaily
  Scenario: a user lands the CatNoGeo page that is an SR overlap category
    Given user is on a visitor site catnogeo page that is an SR overlap category
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

  @catNoGeoPageCallNoSrOverlap @catNoGeoDaily @companyTreeDaily
  Scenario: a user lands the CatNoGeo page that is not an SR overlap category
    Given user is on a visitor site catnogeo page that is not an SR overlap category
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value       |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                        |
      | atTestOffer           |                                                                   |
      | categoryId            | 102                                                               |
      | cid                   |                                                                   |
      | homeAdvisorCategoryId |                                                                   |
      | name                  | Visitor : CatNoGeo                                                |
      | pageVersion           | Lullabot Redesign                                                 |
      | path                  | /companylist/pet-care.htm                                         |
      | referrer              |                                                                   |
      | search                |                                                                   |
      | srCtaDisplayed        |                                                                   |
      | title                 | Local Pet Sitters - Find a Top-Rated Pet Service on Angie's List  |
      | url                   |                                                                   |
      | userId                |                                                                   |
      | userType              | Visitor - New                                                     |
      | visitorPageCategory   | ANIMAL & HOUSE SITTING |


##### Header Tests #####

  @headerJoinCatNoGeo @catNoGeoDaily @companyTreeDaily @headerDailyRegression @catNoGeoDaily
  Scenario: The Join button is clicked on CatNoGeo(Plumbing) page
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
    | visitorPageCategory | Plumbing            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @headerSignInCatNoGeo @catNoGeoDaily @companyTreeDaily @headerDailyRegression @catNoGeoDaily
  Scenario: The Sign In link is clicked on the CatNoGeo(Plumbing) header
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
    | visitorPageCategory | Plumbing            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @headerBcCatNoGeo @catNoGeoDaily @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoHeaderInteriorApplianceRepair @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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


  @catNoGeoSegmentHeaderInteriorCarpetCleaning @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorContractors @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorDrywall @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorElectrical @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorFlooring @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorHVAC @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorHouseCleaning @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorPainting @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorPlumbing @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorRemodeling @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderInteriorViewAll @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorConcreteRepair @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorDoors @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorDriveways @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorPainting @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorPainting @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorGutterCleaning @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorGutterRepair @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorHomeBuilders @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorMasonry @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorRoofing @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorSiding @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorWindows @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderExteriorViewAll @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnGardenDecks @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnGardenFencing @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnLandSurveying @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnLandscaping @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnYard @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnIrrigation @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnMowerRepair @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnLeafRemoval @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnPatios @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnPatios @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnTreeSvc @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderLawnViewAll @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMoreBasement @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMoreDogGrooming @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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


  @catNoGeoSegmentHeaderMoreHandymen @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMoreJunk @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMoreLocksmiths @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMoreMoving @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMorePests @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMorePressureWashing @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMoreSeptic @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderMoreViewAllCat @companyTreeDaily @headerDailyRegression @catNoGeoDaily
  Scenario: User hovers then clicks on View All Cats in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > div:nth-child(3) > a |
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

  @catNoGeoSegmentHeaderMoreNearMe @companyTreeDaily @headerDailyRegression @catNoGeoDaily
  Scenario: User hovers then clicks on Near Me in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(4) > div > div:nth-child(5) > a |
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

  @catNoGeoSegmentHeaderArticlesAdviceAppliances @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceBaseFound @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceBathRemod @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceChimney @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceCleaning @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceContractors @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceElectrical @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceFlooring @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceGarageDrive @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceHVAC @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeConstruction @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeExterior @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeInterior @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeSecurity @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceKitchenRemod @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceLandscaping @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceLighting @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceMoving @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceOutdoorLiving @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdvicePests @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdvicePlumbing @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceRemodeling @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceRoofing @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceStoreageOrg @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceWasteManagement @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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

  @catNoGeoSegmentHeaderArticlesAdviceMore @companyTreeDaily @headerDailyRegression @catNoGeoDaily
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


##### Mobile Header Tests #####


  @catNoGeoSegHeadOpenMobile @mobileOnlyRegression
  Scenario: User clicks hamburger(mobile) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo              |
      | description            | Hamburger menu open in mobile header  |
      | userId                 |                                 |

  @catNoGeoSegHeadCloseMobile @mobileOnlyRegression
  Scenario: User clicks hamburger then clicks the X(mobile) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : CatNoGeo                     |
      | description            | Hamburger menu close in mobile header  |
      | userId                 |                                        |

  @catNoGeoSegHeadJoinNowMobile @mobileOnlyRegression
  Scenario: User clicks hamburger then clicks on Join Now(Mobile) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul.col-50-50 > li:nth-child(1)> li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Join Now link in header  |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @catNoGeoSegHeadSignInMobile @mobileOnlyRegression
  Scenario: User clicks hamburger then clicks on Sign In in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul.col-50-50 > li:nth-child(2)> li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Sign In link in header   |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @catNoGeoSegHeadBusinessOwnerMobile @mobileOnlyRegression
  Scenario: User clicks hamburger then clicks on Business Owner in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul:nth-child(4) > a > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Business Owners link in header   |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @catNoGeoSegHeadNearMeMobile @mobileOnlyRegression
  Scenario: User clicks hamburger(Mobile) then clicks on NearMe link in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul:nth-child(3) > a > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Near Me link in mobile header   |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"


##### Body Tests #####






## Needs to be filled in ##







##### Footer Tests #####


  ## test_companyListCatNoGeoFooterJoinClick
  Scenario: segment call on clicking the Join link in CatNoGeo footer
    Given user is on a visitor site catnogeo page that is an SR overlap category
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
    Given user is on a visitor site catnogeo page that is an SR overlap category
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
