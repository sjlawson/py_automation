@companyTree
Feature:

  @geoCatPageCall @geoCatDaily @companyTreeDaily
  Scenario: Segment pagecall when GeoCat(Denver Plumbing) loads
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