@companyListTree
Feature:

  @geoCatPageCall
  Scenario: Segment pagecall when GeoCat(Denver Roofing) loads
    Given user is on a visitor site geocat page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | pageVersion         | GeoCat Tampa Redesign |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                 |
      | atTestOffer           |                                                            |
      | categoryId            | 112                                                        |
      | cid                   |                                                            |
      | homeAdvisorCategoryId | 12061                                                      |
      | marketId              | 27                                                         |
      | name                  | Visitor : Geocat                                           |
      | pageVersion           | GeoCat Tampa Redesign                                      |
      | path                  | /companylist/denver/roofing.htm                            |
      | referrer              |                                                            |
      | search                |                                                            |
      | seoTestName           |                                                            |
      | srCtaDisplayed        | true                                                       |
      | srCtaVersion          | v2                                                         |
      | title                 | Top 10 Best Denver CO Roofing Contractors &vert; Angie's List   |
      | url                   |                                                            |
      | userId                |                                                            |
      | userType              | Visitor - New                                              |
      | visitorPageCategory   | ROOFING                                                    |
      | visitorPageGeo        | DENVER                                                     |
      | visitorPageGeoCategory  | DENVER - ROOFING                                         |
      | visitorPageVerticalId   | 7051                                                     |
      | visitorPageVerticalName | Home Improvement                                         |

##### Header Tests #####


  @geoCatHeaderJoin @geoCatHeader @companyListTreeHeader
  Scenario: The Join button is clicked on GeoCat(Denver Roofing) page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params |
    | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link in header |
    And the segment call contains parameters
    | prop_key            | prop_value          |
    | description         | Join link in header |
    | activityLocation    | Visitor : Geocat    |
    | userId              |                     |
    | visitorPageCategory | Roofing             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @headerSignInGeoCat @newHeader
  Scenario: The Sign In link is clicked on the GeoCat(Denver Roofing) header
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params   |
    | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value           |
    | description  | Sign In link in header |
    And the segment call contains parameters
    | prop_key         | prop_value             |
    | description      | Sign In link in header |
    | activityLocation | Visitor : Geocat       |
    | userId           |                        |
    | visitorPageCategory | Roofing             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member"

  @headerBcGeoCat @newHeader
  Scenario: The Business Center link is clicked on the GeoCat(Denver Roofing) header
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params       |
    | click         | #business-center    |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                   |
    | description  | Business Owners link in header |
    And the segment call contains parameters
    | prop_key         | prop_value                     |
    | description      | Business Owners link in header |
    | activityLocation | Visitor : Geocat               |
    | userId           |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @geoCatHeaderInteriorApplianceRepair @newHeader
  Scenario: User hovers then clicks on Appliance Repair in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @geoCatHeaderInteriorHouseCleaning @newHeader
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(1) > label |
      | click           | css: #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Interior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/house-cleaning.htm"

  @geoCatHeaderExteriorPainting @newHeader
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Exterior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/exterior-painting.htm"

  @geoCatHeaderExteriorViewAllCats @newHeader
  Scenario: User hovers then clicks on Exterior View All in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > div > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Exterior menu view all categories link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoCatHeaderMoreNearMe @newHeader
  Scenario: User hovers then clicks on More NearMe in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(4) > label |
      | click           | css: #more-toggle > div:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                       |
      | activityLocation       | Visitor : Geocat                 |
      | description            | Near Me link in desktop header   |
      | userId                 |                                  |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"


##### Body Tests #####

  @geoCatSegmentSRNoZip @daily_auto
  Scenario: User is on a GeoCat Page and selects the SR flow without any postal code.
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params   |
    | click         | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Service Request Flow entry button |
    And the segment call contains parameters
    | prop_key         | prop_value        |
    | description      | Service Request Flow entry button |
    | activityLocation | Visitor : Geocat  |
    | userId           |                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode="

  @geoCatSegmentSRWithZip @daily_auto
  Scenario: SR CTA button click on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method   | action_params   |
    | move_to_element | #ha-lead-zip    |
    | click           | #ha-lead-zip    |
    | send_keys       | 90068           |
    | click           | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Service Request Flow entry button |
    And the segment call contains parameters
    | prop_key         | prop_value        |
    | description      | Service Request Flow entry button |
    | activityLocation | Visitor : Geocat  |
    | userId           |                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode=90068"



##### Footer Tests #####