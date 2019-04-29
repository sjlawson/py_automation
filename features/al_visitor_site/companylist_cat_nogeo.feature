Feature:

  @catNoGeoPageCall
  Scenario: Segment pagecall when CatNoGeo loads
    Given user is on a visitor site catnogeo page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : CatNoGeo |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                 |
      | atTestOffer           |                                                            |
      | categoryId            |                                                            |
      | cid                   |                                                            |
      | homeAdvisorCategoryId |                                                            |
      | name                  | Visitor : CatNoGeo                                         |
      | pageVersion           | Lullabot Redesign                                          |
      | path                  | /companylist/plumbing.htm                                  |
      | referrer              |                                                            |
      | search                |                                                            |
      | title                 | Local Plumbers - Find a Top-Rated Plumber on Angie's List  |
      | url                   |                                                            |
      | userId                |                                                            |
      | userType              | Visitor - New                                              |
      | visitorPageCategory   | PLUMBING                                                   |


##### Header Tests #####

  @headerJoinCatNoGeo @CatNoGeoDaily
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

  @headerSignInCatNoGeo @CatNoGeoDaily
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
    And the landing URL contains ".angieslist.com/member"

  @headerBcCatNoGeo @CatNoGeoDaily
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

  @catNoGeoHeaderInteriorApplianceRepair @daily_auto @header_regression
  Scenario: User hovers then clicks on Appliance Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(1) > li |
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


  @catNoGeoSegmentHeaderInteriorCarpetCleaning @daily_auto @header_regression
  Scenario: User hovers then clicks on Carpet Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(2) > li |
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

  @catNoGeoSegmentHeaderInteriorContractors @daily_auto @header_regression
  Scenario: User hovers then clicks on Contractors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(3) > li |
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

  @catNoGeoSegmentHeaderInteriorDrywall @daily_auto @header_regression
  Scenario: User hovers then clicks on Drywall in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(4) > li |
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

  @catNoGeoSegmentHeaderInteriorElectrical @daily_auto @header_regression
  Scenario: User hovers then clicks on Electrical in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(5) > li |
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

  @catNoGeoSegmentHeaderInteriorFlooring @daily_auto @header_regression
  Scenario: User hovers then clicks on Flooring in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(6) > li |
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

  @catNoGeoSegmentHeaderInteriorHVAC @daily_auto @header_regression
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(7) > li |
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

  @catNoGeoSegmentHeaderInteriorHouseCleaning @daily_auto @header_regression
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(8) > li |
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

  @catNoGeoSegmentHeaderInteriorPainting @daily_auto @header_regression
  Scenario: User hovers then clicks on Interior Painting in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(9) > li |
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

  @catNoGeoSegmentHeaderInteriorPlumbing @daily_auto @header_regression
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(10) > li |
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

  @catNoGeoSegmentHeaderInteriorRemodeling @daily_auto @header_regression
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > a:nth-child(11) > li |
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

  @catNoGeoSegmentHeaderInteriorViewAll @daily_auto @header_regression
  Scenario: User hovers then clicks on View All Categories in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > div > a |
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

  @catNoGeoSegmentHeaderExteriorConcreteRepair @daily_auto @header_regression
  Scenario: User hovers then clicks on Concrete Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(1) > li |
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

  @catNoGeoSegmentHeaderExteriorDoors @daily_auto @header_regression
  Scenario: User hovers then clicks on Doors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(2) > li |
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

  @catNoGeoSegmentHeaderExteriorDriveways @daily_auto @header_regression
  Scenario: User hovers then clicks on Driveways in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(3) > li |
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

  @catNoGeoSegmentHeaderExteriorPainting @daily_auto @header_regression
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(4) > li |
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

  @catNoGeoSegmentHeaderExteriorPainting @daily_auto @header_regression
  Scenario: User hovers then clicks on Garage Doors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(5) > li |
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

  @catNoGeoSegmentHeaderExteriorGutterCleaning @daily_auto @header_regression
  Scenario: User hovers then clicks on Gutter Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(6) > li |
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

  @catNoGeoSegmentHeaderExteriorGutterRepair @daily_auto @header_regression
  Scenario: User hovers then clicks on Gutter Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(7) > li |
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

  @catNoGeoSegmentHeaderExteriorHomeBuilders @daily_auto @header_regression
  Scenario: User hovers then clicks on Home Builders in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(8) > li |
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

  @catNoGeoSegmentHeaderExteriorMasonry @daily_auto @header_regression
  Scenario: User hovers then clicks on Masonry in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(9) > li |
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

  @catNoGeoSegmentHeaderExteriorRoofing @daily_auto @header_regression
  Scenario: User hovers then clicks on Roofing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(10) > li |
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

  @catNoGeoSegmentHeaderExteriorSiding @daily_auto @header_regression
  Scenario: User hovers then clicks on Siding in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(11) > li |
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

  @catNoGeoSegmentHeaderExteriorWindows @daily_auto @header_regression
  Scenario: User hovers then clicks on Windows in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > a:nth-child(12) > li |
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

  @catNoGeoSegmentHeaderExteriorViewAll @daily_auto @header_regression
  Scenario: User hovers then clicks on View All in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > div > a |
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

  @catNoGeoSegmentHeaderLawnGardenDecks @daily_auto @header_regression
  Scenario: User hovers then clicks on Decks in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(1) > li |
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

  @catNoGeoSegmentHeaderLawnGardenFencing @daily_auto @header_regression
  Scenario: User hovers then clicks on Fencing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(2) > li |
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

  @catNoGeoSegmentHeaderLawnLandSurveying @daily_auto @header_regression
  Scenario: User hovers then clicks on Land Surveying in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(3) > li |
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

  @catNoGeoSegmentHeaderLawnLandscaping @daily_auto @header_regression
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(4) > li |
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

  @catNoGeoSegmentHeaderLawnYard @daily_auto @header_regression
  Scenario: User hovers then clicks on Lawn & Yard in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(5) > li |
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

  @catNoGeoSegmentHeaderLawnIrrigation @daily_auto @header_regression
  Scenario: User hovers then clicks on Lawn Irrigation in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(6) > li |
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

  @catNoGeoSegmentHeaderLawnMowerRepair @daily_auto @header_regression
  Scenario: User hovers then clicks on Lawn Mower Repair in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(7) > li |
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

  @catNoGeoSegmentHeaderLawnLeafRemoval @daily_auto @header_regression
  Scenario: User hovers then clicks on Leaf Removal in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(8) > li |
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

  @catNoGeoSegmentHeaderLawnPatios @daily_auto @header_regression
  Scenario: User hovers then clicks on Patios in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(9) > li |
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

  @catNoGeoSegmentHeaderLawnPatios @daily_auto @header_regression
  Scenario: User hovers then clicks on Shed Builders in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(10) > li |
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

  @catNoGeoSegmentHeaderLawnTreeSvc @daily_auto @header_regression
  Scenario: User hovers then clicks on Tree Service in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > ul > a:nth-child(11) > li |
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

  @catNoGeoSegmentHeaderLawnViewAll @daily_auto @header_regression
  Scenario: User hovers then clicks on View All in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(3) > div > div > a |
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

  @catNoGeoSegmentHeaderMoreBasement @daily_auto @header_regression
  Scenario: User hovers then clicks on Basement Waterproofing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(1) > li |
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

  @catNoGeoSegmentHeaderMoreDogGrooming @daily_auto @header_regression
  Scenario: User hovers then clicks on Dog Grooming in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(2) > li |
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


  @catNoGeoSegmentHeaderMoreHandymen @daily_auto @header_regression
  Scenario: User hovers then clicks on Handymen in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(3) > li |
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

  @catNoGeoSegmentHeaderMoreJunk @daily_auto @header_regression
  Scenario: User hovers then clicks on Junk Hauling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(4) > li |
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

  @catNoGeoSegmentHeaderMoreLocksmiths @daily_auto @header_regression
  Scenario: User hovers then clicks on Locksmiths in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(5) > li |
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

  @catNoGeoSegmentHeaderMoreMoving @daily_auto @header_regression
  Scenario: User hovers then clicks on Moving Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(6) > li |
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

  @catNoGeoSegmentHeaderMorePests @daily_auto @header_regression
  Scenario: User hovers then clicks on Pest Control Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(7) > li |
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

  @catNoGeoSegmentHeaderMorePressureWashing @daily_auto @header_regression
  Scenario: User hovers then clicks on Pressure Washing Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(8) > li |
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

  @catNoGeoSegmentHeaderMoreSeptic @daily_auto @header_regression
  Scenario: User hovers then clicks on Septic Tanks Companies in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > ul > a:nth-child(9) > li |
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

  @catNoGeoSegmentHeaderMoreViewAllCat @daily_auto @header_regression
  Scenario: User hovers then clicks on View All Cats in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > div:nth-child(3) > a |
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

  @catNoGeoSegmentHeaderMoreNearMe @daily_auto @header_regression
  Scenario: User hovers then clicks on Near Me in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(4) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(4) > div > div:nth-child(5) > a |
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

  @catNoGeoSegmentHeaderArticlesAdviceAppliances @daily_auto @header_regression
  Scenario: User hovers then clicks on Appliances in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(1) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceBaseFound @daily_auto @header_regression
  Scenario: User hovers then clicks on Basements & Foundations in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(2) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceBathRemod @daily_auto @header_regression
  Scenario: User hovers then clicks on Bathroom Remodel in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(3) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceChimney @daily_auto @header_regression
  Scenario: User hovers then clicks on Chimneys & Fireplaces in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(4) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceCleaning @daily_auto @header_regression
  Scenario: User hovers then clicks on Cleaning in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(5) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceContractors @daily_auto @header_regression
  Scenario: User hovers then clicks on Contractors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(6) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceElectrical @daily_auto @header_regression
  Scenario: User hovers then clicks on Electrical in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(7) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceFlooring @daily_auto @header_regression
  Scenario: User hovers then clicks on Flooring in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(8) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceGarageDrive @daily_auto @header_regression
  Scenario: User hovers then clicks on Garages & Driveways in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(9) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceHVAC @daily_auto @header_regression
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(10) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeConstruction @daily_auto @header_regression
  Scenario: User hovers then clicks on Home Construction in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(11) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeExterior @daily_auto @header_regression
  Scenario: User hovers then clicks on Home Exteriors in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(12) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeInterior @daily_auto @header_regression
  Scenario: User hovers then clicks on Home Interior in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(13) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceHomeSecurity @daily_auto @header_regression
  Scenario: User hovers then clicks on Home Security in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(14) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceKitchenRemod @daily_auto @header_regression
  Scenario: User hovers then clicks on Kitchen Remodeling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(15) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceLandscaping @daily_auto @header_regression
  Scenario: User hovers then clicks on Landscaping in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(16) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceLighting @daily_auto @header_regression
  Scenario: User hovers then clicks on Lighting in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(17) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceMoving @daily_auto @header_regression
  Scenario: User hovers then clicks on Moving in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(18) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceOutdoorLiving @daily_auto @header_regression
  Scenario: User hovers then clicks on Outdoor Living in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(19) > li |
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

  @catNoGeoSegmentHeaderArticlesAdvicePests @daily_auto @header_regression
  Scenario: User hovers then clicks on Pests in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(20) > li |
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

  @catNoGeoSegmentHeaderArticlesAdvicePlumbing @daily_auto @header_regression
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(21) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceRemodeling @daily_auto @header_regression
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(22) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceRoofing @daily_auto @header_regression
  Scenario: User hovers then clicks on Roofing in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(23) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceStoreageOrg @daily_auto @header_regression
  Scenario: User hovers then clicks on Storage & Organization in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page



    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(24) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceWasteManagement @daily_auto @header_regression
  Scenario: User hovers then clicks on Waste Management in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > ul > a:nth-child(25) > li |
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

  @catNoGeoSegmentHeaderArticlesAdviceMore @daily_auto @header_regression
  Scenario: User hovers then clicks on View All in the header(Advice) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(5) > div > div > a |
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
