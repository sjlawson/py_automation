@companyListTree
Feature:

  @geoCatPageCall
  Scenario: Segment pagecall when GeoCat(Denver Roofing) loads
    Given user is on a visitor site geocat page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | pageVersion         | GeoCat Tampa Redesign |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                      |
      | atTestOffer           |                                                                 |
      | categoryId            | 112                                                             |
      | cid                   |                                                                 |
      | homeAdvisorCategoryId | 12061                                                           |
      | marketId              | 27                                                              |
      | name                  | Visitor : Geocat                                                |
      | pageVersion           | GeoCat Tampa Redesign                                           |
      | path                  | /companylist/denver/roofing.htm                                 |
      | referrer              |                                                                 |
      | search                |                                                                 |
      | seoTestName           |                                                                 |
      | srCtaDisplayed        | true                                                            |
      | srCtaVersion          | v2                                                              |
      | title                 | Top 10 Best Denver CO Roofing Contractors &vert; Angie's List   |
      | url                   |                                                                 |
      | userId                |                                                                 |
      | userType              | Visitor - New                                                   |
      | visitorPageCategory   | ROOFING                                                         |
      | visitorPageGeo        | DENVER                                                          |
      | visitorPageGeoCategory  | DENVER - ROOFING                                              |
      | visitorPageVerticalId   | 7051                                                          |
      | visitorPageVerticalName | Home Improvement                                              |

##### Header Tests #####


  @geoCatHeaderJoin @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
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


  @headerSignInGeoCat @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
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

  @headerBcGeoCat @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
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

  @geoCatHeaderInteriorApplianceRepair @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
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
    And the landing URL contains ".angieslist.com/companylist/denver/appliance-repair.htm"

  @geoCatHeaderInteriorHouseCleaning @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
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
    And the landing URL contains ".angieslist.com/companylist/denver/house-cleaning.htm"

  @geoCatHeaderExteriorPainting @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Exterior Painting in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | css: #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field      | unique_value           |
      | activityLocation  | Visitor : Geocat       |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Exterior menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/denver/exterior-painting.htm"

  @geoCatHeaderExteriorViewAllCats @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
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


  @geoCatHeaderLawnGardenDecks @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Lawn & Garden and then Decks in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(3) > label > span |
      | click           | css: #lawn-toggle > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Lawn & Garden menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/denver/decks-and-porches.htm"


  @geoCatHeaderMoreNearMe @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
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

  @geoCatHeaderArticlesAdviceElectrical @geoCatHeader @companyListTreeHeader @companyListTreeRegression @companyListTreeSmoke
  Scenario: User hovers then clicks on Articles & Advice and then Electrical in the header on the Drupal GeoCat(Denver Roofing)
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #secondary-nav > ul > li:nth-child(5) > label > span |
      | click           | css: #articles-toggle > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : Geocat   |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Geocat                      |
      | description            | Articles & Advice menu category link in header |
      | userId                 |                                       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/electrical/"


##### Body Tests #####

  @geoCatSegmentSRNoZip @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User is on a GeoCat Page and selects the SR flow without any postal code.
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params   |
    | click         | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                      |
    | description  | Service Request Flow entry button |
    And the segment call contains parameters
    | prop_key         | prop_value                        |
    | description      | Service Request Flow entry button |
    | activityLocation | Visitor : Geocat                  |
    | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode="

  @geoCatSegmentSRWithZip @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: SR CTA button click on GeoCat page
    Given user is on a visitor site geocat page
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
    | activityLocation | Visitor : Geocat                  |
    | userId           |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Roofing-Siding-Gutters.10217.html?entry_point_id=32723378&postalCode=90068"
    
    @geoCatBodySeeAllCategoriesSearch @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
    Scenario: User clicks on See All Categories and selects Cleaning on GeoCat page
      Given user is on a visitor site geocat page
      When a user performs actions
    | action_method   | action_params                                                |
    | move_to_element | #geocat-category-select-all                                  |
    | click           | #geocat-category-select-all                                  |
    | click           | css: .geocat-category-select__dropdown-menu.al-dropdown-menu.clearfix > div > ul > li:nth-child(4) |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                               |
    | description  | Category selected from all categories list |
    And the segment call contains parameters
    | prop_key               | prop_value                                 |
    | description            | Category selected from all categories list |
    | activityLocation       | Visitor : GeoCat                           |
    | userId                 |                                            |
    | categorySelected       | Cleaning                                   |
    | marketId               |                                            |
    | visitorPageCategory    | ROOFING                                    |
    | visitorPageGeo         | DENVER                                     |
    | visitorPageGeoCategory | DENVER - ROOFING                           |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/denver/cleaning.htm"

    @geoCatBodyEditLocation @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
    Scenario: User clicks on Location Field by Category and types in Aurora on GeoCat page
      Given user is on a visitor site geocat page
      When the user clears text field with selector "id: edit-location"
      When a user performs actions
      | action_method   | action_params                                            |
      | move_to_element | id: edit-location                                        |
      | click           |                                                          |
      | send_keys       | Aurora                                                   |
      And a user performs actions
      | action_method   | action_params                                            |
      | move_to_element | css: div.geocat-location-select > div > div:nth-child(1) |
      | click           |                                                          |
      | move_to_element | css: #edit-geocat-submit > i                             |
      | click           |                                                          |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                               |
      | description  | Search bar submission |
      And the segment call contains parameters
      | prop_key               | prop_value            |
      | description            | Search bar submission |
      | activityLocation       | Visitor : GeoCat      |
      | userId                 |                       |
      | locationSearched       | Aurora, CO            |
      | manualTextSearched     | Roofing               |
      | marketID               |                       |
      | visitorPageCategory    | ROOFING               |
      | visitorPageGeo         | DENVER                |
      | visitorPageGeoCategory | DENVER - ROOFING      |
      And we wait "1" seconds for the next page to load
      And the landing URL contains ".angieslist.com/companylist/us/co/aurora/roofing.htm"

@geoCatBreadcrumbs @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
 Scenario: User clicks on a Breadcrumpb on the GeoCat page
      Given user is on a visitor site geocat page
      When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | css: #block-system-main > div > div:nth-child(1) > div.panel-pane.pane-breadcrumb-block.clearfix > div > div > div > a:nth-child(4) |
      | click           | css: #block-system-main > div > div:nth-child(1) > div.panel-pane.pane-breadcrumb-block.clearfix > div > div > div > a:nth-child(4) |
      Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Breadcrumbs link      |
      And the segment call contains parameters
      | prop_key               | prop_value            |
      | description            | Breadcrumbs link      |
      | activityLocation       | Visitor : Geocat      |
      | userId                 |                       |
      | visitorPageCategory    | Roofing               |
      | visitorPageGeo         | DENVER                |
      | visitorPageGeoCategory | DENVER - ROOFING      |
      And we wait "1" seconds for the next page to load
      And the landing URL contains ".angieslist.com/companylist/"


@geoCatBodyFeaturedServiceProviderClick @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
    Scenario: User clicks on an Service Provicer in the Featured SP List on GeoCat page
      Given user is on a visitor site geocat page
      When a user performs actions
    | action_method   | action_params                 |
    | move_to_element | css: #block-system-main > div > div:nth-child(1) > div.panel-pane.pane-al-geocat-featured-sp-list-v2.legacy_width_fix > ul > li:nth-child(1) > div.geocat-featured-sp-list__cta > div.geocat-featured-sp-list__cta-content > h3.geocat-featured-sp-list__cta-title > a.geocat-featured-sp-list__cta-title-link  |
    | click           | css: #block-system-main > div > div:nth-child(1) > div.panel-pane.pane-al-geocat-featured-sp-list-v2.legacy_width_fix > ul > li:nth-child(1) > div.geocat-featured-sp-list__cta > div.geocat-featured-sp-list__cta-content > h3.geocat-featured-sp-list__cta-title > a.geocat-featured-sp-list__cta-title-link  |
      Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value                      |
    | description  | SP name in featured list |
      And the segment call contains parameters
    | prop_key               | prop_value                                 |
    | description            | SP name in featured list                   |
    | activityLocation       | Visitor : GeoCat                           |
    | userId                 |                                            |
    | marketId               |                                            |
    | overallReviewCount     |                                            |
    | overallReviewGrade     |                                            |
    | rank                   |                                            |
    | visitorPageCategory    | ROOFING                                    |
    | visitorPageGeo         | DENVER                                     |
    | visitorPageGeoCategory | DENVER - ROOFING                           |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"
    And the landing URL contains ".htm"


  @geoCatBodyJoinCTA @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks Join button CTA in the body below featured SP's on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params                         |
    | click         | #block-system-main > div > div:nth-child(1) > section.geocat-see-all-cta > a > span.geocat-see-all-cta__no-wrap > span  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join button beneath list of featured SPs |
    And the segment call contains parameters
    | prop_key                 | prop_value          |
    | description              | Join button beneath list of featured SPs |
    | activityLocation         | Visitor : GeoCat    |
    | marketId                 | 27                  |
    | userId                   |                     |
    | visitorPageCategory      | ROOFING             |
    | visitorPageGeo           | DENVER              |
    | visitorPageGeoCategory   | DENVER - ROOFING    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


@geoCatBodyArticles @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clickks on an Article below the Join CTA in the body on the GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params                         |
    | click         | #block-system-main > div > div:nth-child(1) > div.geocat-article-breaker__container.panel-pane.pane-al-geocat-articles.legacy_width_fix > div > div:nth-child(1) > a > h3  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Solution Center helpful article |
    And the segment call contains parameters
    | prop_key                 | prop_value          |
    | description              | Solution Center helpful article |
    | activityLocation         | Visitor : GeoCat    |
    | contentNodeId            | 125011              |
    | marketId                 | 27                  |
    | userId                   |                     |
    | visitorPageCategory      | ROOFING             |
    | visitorPageGeo           | DENVER              |
    | visitorPageGeoCategory   | DENVER - ROOFING    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"


@geoCatCitiesNearMeLink @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the Cities Near Me below Articles is clicked on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params                  |
    | click         | #mini-panel-geocat_near_me_and_zip_codes > div > div > section > div > ul > li:nth-child(1) > a  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Near Me city link |
    And the segment call contains parameters
    | prop_key                 | prop_value          |
    | description              | Near Me city link|
    | activityLocation         | Visitor : GeoCat    |
    | marketId                 | 27                  |
    | userId                   |                     |
    | visitorPageCategory      | ROOFING             |
    | visitorPageGeo           | DENVER              |
    | visitorPageGeoCategory   |                     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"


  @geoCatSPDirectoryJoinCTA @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the Join button CTA in the SP Directory below SP Reviews the on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params                         |
    | click         | #join-angies-list-now  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Join link within directory list of SPs |
    And the segment call contains parameters
    | prop_key                 | prop_value          |
    | description              | Join link within directory list of SPs |
    | activityLocation         | Visitor : GeoCat    |
    | marketId                 | 27                  |
    | userId                   |                     |
    | visitorPageCategory      | ROOFING             |
    | visitorPageGeo           | DENVER              |
    | visitorPageGeoCategory   | DENVER - ROOFING    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @geoCatSPDirectoryClick @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on a Service Provider in SP Directory below SP Reviews on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params                         |
    | click         | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > ul:nth-child(3) > li:nth-child(2) > p > a  |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | SP name in directory |
    And the segment call contains parameters
    | prop_key                 | prop_value          |
    | description              | SP name in directory |
    | activityLocation         | Visitor : GeoCat    |
    | marketId                 | 27                  |
    | userId                   |                     |
    | visitorPageCategory      | ROOFING             |
    | serviceProviderId        |                     |
    | visitorPageGeo           | DENVER              |
    | visitorPageGeoCategory   | DENVER - ROOFING    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist"
    And the landing URL contains ".htm"

  @geoCatSPDirectoryPagination @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the pagination in SP Directory below SP Reviews on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method   | action_params                 |
    | move_to_element | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li:nth-child(3) > a |
    | click           | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li:nth-child(3) > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/denver/roofing.htm?page=2"
  
  @geoCatSPDirectoryNext @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the Next link in SP Directory below SP Reviews on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method   | action_params                 |
    | move_to_element | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li.pager-next.right-caret > a |
    | click           | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li.pager-next.right-caret > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/denver/roofing.htm?page=1"


  @geoCatSPDirectoryPrevious @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the Previous link in SP Directory below SP Reviews on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method   | action_params                 |
    | move_to_element | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li.pager-next.right-caret > a |
    | click           | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li.pager-next.right-caret > a |
    And a user performs actions
    | action_method   | action_params                 |
    | move_to_element | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li.pager-previous.left-caret > a |
    | click           | #geocat-full-sp-list > div > div.geocat-full-sp-list__dropdown-menu.al-dropdown-menu > div:nth-child(2) > ul > li.pager-previous.left-caret > a |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/denver/roofing.htm"

@geoCatGeoTaskLink @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on a GeoTask Link below the SP Directory on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params                         |
    | click         | css: #block-system-main > div > div:nth-child(1) > section.geocat-related-to.panel-pane.pane-al-geocat-related-v2 > div > div.geocat-related-to__tasks-wrapper.half > div:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value         |
    | description  | GeoTask project link |
    And the segment call contains parameters
    | prop_key                 | prop_value                   |
    | description              | GeoTask project link         |
    | activityLocation         | Visitor : Geocat             |
    | marketId                 | 27                           |
    | userId                   |                              |
    | taskSelected             | Install Asphalt Shingle Roof |
    | visitorPageCategory      | ROOFING                      |
    | visitorPageGeo           | DENVER                       |
    | visitorPageGeoCategory   | DENVER - ROOFING             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/t"
    And the landing URL contains ".htm"

@geoCatRelatedGeoCatLink @geoCatBody @companyListTreeBody @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on a Related GeoCat Link below the SP Directory on GeoCat page
    Given user is on a visitor site geocat page
    When a user performs actions
    | action_method | action_params                         |
    | click         | css: #block-system-main > div > div:nth-child(1) > section.geocat-related-to.panel-pane.pane-al-geocat-related-v2 > div > div.geocat-related-to__cats-wrapper.half > div:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
    | unique_field | unique_value        |
    | description  | Related GeoCat link |
    And the segment call contains parameters
    | prop_key                 | prop_value                   |
    | description              | Related GeoCat link          |
    | activityLocation         | Visitor : Geocat             |
    | marketId                 | 27                           |
    | userId                   |                              |
    | categorySelected         | Siding |
    | visitorPageCategory      | ROOFING                      |
    | visitorPageGeo           | DENVER                       |
    | visitorPageGeoCategory   | DENVER - ROOFING             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"
    And the landing URL contains ".htm"


##### Footer Tests #####

  @geoCatFooterTopCityNYC @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer NYC top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: footer-top-cities-new-york  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/new-york-tristate-area/"


  @geoCatFooterTopCityHouston @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Houston top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-houston  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/houston/"


  @geoCatFooterTopCityChi @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Chicago top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-chicago  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/chicago/"


  @geoCatFooterTopCityIndy @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Indianapolis top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: footer-top-cities-indianapolis  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/indianapolis/"


  @geoCatFooterTopCityBos @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Boston top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-boston  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/boston/"

  @geoCatFooterTopCityATL @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Atlanta top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | id: footer-top-cities-atlanta  |
      | click           |                                |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/atlanta/"

  @geoCatFooterTopCityCinci @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Cincinnati top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-cincinnati  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/cincinnati/"

  @geoCatFooterTopCityLA @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Los Angeles top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-los-angeles  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/los-angeles/"

  @geoCatFooterTopCityDal @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Dallas top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                 |
      | move_to_element | id: footer-top-cities-dallas  |
      | click           |                               |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/dallas/"

  @geoCatFooterTopCityPitt @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Pittsburgh top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | id: footer-top-cities-pittsburgh  |
      | click           |                                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/pittsburgh/"

  @geoCatFooterTopCityMinn @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Minneapolis top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-minneapolis  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/minneapolis/"

  @geoCatFooterTopCityLV @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Las Vegas top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-las-vegas  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/las-vegas/"

  @geoCatFooterTopCitySA @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer San Antonio top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/san-antonio/"

  @geoCatFooterTopCityTampa @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Tampa top city link on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Geocat               |
      | description            | Top Cities link in footer      |
      | userId                 |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/tampa-bay/"

  @geoCatFooterSegmentJoinForFree @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Join For Free icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #footer--join-for-free  |
      | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Geocat                  |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @geoCatFooterSegmentCompanyList @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Company List icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer--find-local-business  |
      | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : Geocat                       |
      | description            | Find Local Businesses link in footer   |
      | userId                 |                                        |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @geoCatFooterSegmentNearMe @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Near Me icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--nearme |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Geocat                  |
      | description            | Services Near Me link in footer   |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @geoCatFooterSegmentHowItWorks @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left How It Works icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params            |
      | move_to_element | id: footer--how-it-works |
      | click           |                          |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Geocat                  |
      | description            | How It Works link in footer       |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @geoCatFooterSegmentSolutionCenter @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Solution Center icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--solution-center |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Geocat                  |
      | description            | Solution Center link in footer    |
      | userId                 |                                   |
    And we wait "4" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @geoCatFooterSegmentPhotoGalleries @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Photos icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--photo-galleries |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Geocat                  |
      | description            | Photo Galleries link in footer    |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @geoCatFooterSegmentVideos @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Videos icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: footer--video  |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Geocat                  |
      | description            | Videos link in footer             |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @geoCatFooterSegmentAnswers @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Answers icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--answers |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : Geocat            |
      | description            | Answers link in footer      |
      | userId                 |                             |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com"

  @geoCatFooterSegmentBusinessOwners @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Business Owners icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | id: footer--business-owners |
      | click           |                             |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Geocat                   |
      | description            | For Business Owners link in footer |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @geoCatFooterSegmentInvestorRelations @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Investor Relations icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | id: footer--investor |
      | click           |                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Geocat                   |
      | description            | Investor Relations link in footer  |
      | userId                 |                                    |

  @geoCatFooterSegmentAboutUs @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left About Us icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--about-angie |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : Geocat                   |
      | description            | About Angie’s List link in footer  |
      | userId                 |                                    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @geoCatFooterSegmentCareers @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Careers icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--careers     |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Geocat           |
      | description            | Careers link in footer     |
      | userId                 |                            |

  @geoCatFooterSegmentFAQ @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left FAQ icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: footer--faqs    |
      | click           |                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : Geocat     |
      | description            | FAQs link in footer  |
      | userId                 |                      |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"


  @geoCatFooterSegmentContactUs @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-left Contact Us icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: footer--contact-us  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Geocat           |
      | description            | Contact Us link in footer  |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @geoCatFooterSegmentJoin @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer-right Join icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params    |
      | move_to_element | id: footer-join  |
      | click           |                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       | Visitor : Geocat           |
      | description            | Join button in footer      |
      | userId                 |                            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @geoCatFooterSegmentTermsOfUse @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer TermsOfUse icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params     |
      | move_to_element | id: footer--terms |
      | click           |                   |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       | Visitor : Geocat             |
      | description            | Terms of Use link in footer  |
      | userId                 |                              |

  @geoCatFooterSegmentPrivacyPolicy @geoCatFooter @companyListTreeFooter @companyListTreeRegression @companyListTreeSmoke
  Scenario: User clicks on the footer Privacy Policy icon on Drupal Company List Page
    Given user is on a visitor site geocat page
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--privacy-policy |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value            |
      | activityLocation | Visitor : Geocat |
    And the segment call contains parameters
      | prop_key               | prop_value                    |
      | activityLocation       | Visitor : Geocat              |
      | description            | Privacy Policy link in footer |
      | userId                 |                               |
