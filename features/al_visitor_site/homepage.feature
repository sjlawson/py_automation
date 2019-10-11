Feature:
    
  @accessibility
  Scenario: Home page accessibility test
    Given user is on a visitor site page
    """
    /
    """
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines

  @accessibility
  Scenario Outline: run wcag2a accessibility test on multiple pages
    Given user is on visitor site page with path "<path>"
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines
    Examples: path
    | path         |
    | /companylist |
    | /articles    |
    
  @homePageSegmentPagecall @dailyHomepageRegression 
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
      | referrer       |                                                                       |
      | search         |                                                                       |
      | srCtaDisplayed | true                                                                  |
      | userId         |                                                                       |
      | url            | https://www.angieslist.com/                                           |
      | userType       | Visitor - New                                                         |
      | title          | Angie's List \| See for FREE our 12 Million Verified Reviews          |
      | srCtaVersion   | v2.1                                                                  |

  @homePageSegmentPageCallReturn @dailyHomepageRegression 
  Scenario: Segment pagecall on homepage when a user returns to our site
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | id: business-center |
      | click           |                     |
    Then we wait "3" seconds for the next page to load
    Then user returns to the visitor site page
    """
    /
    """
    Then we wait "3" seconds for the next page to load
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value   |
      | name         | Visitor : Home |
    Then the segment call contains parameters
      | prop_key       | prop_value                                                            |
      | name           | Visitor : Home                                                        |
      | atTestOffer    |                                                                       |
      | cid            |                                                                       |
      | path           | /                                                                     |
      | referrer       |                                                                       |
      | search         |                                                                       |
      | srCtaDisplayed | true                                                                  |
      | userId         |                                                                       |
      | url            | https://www.angieslist.com/                                           |
      | userType       | Visitor - Returning                                                   |
      | title          | Angie's List \| See for FREE our 12 Million Verified Reviews          |
      | srCtaVersion   | v2.1                                                                  |


##### Current Header HomePage #####

  @homePageSegmentHeaderHamburgerMenu @dailyAuto @dailyHomepageRegression @homePageHeaderRegression
  Scenario: User clicks on Header Join button on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: al_show_menu   |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key         | prop_value                           |
      | activityLocation | Visitor : Home                       |
      | description      | Hamburger menu open in mobile header |
      | userId           |                                      |

  @homePageSegmentHomePageHeaderCloseHamburgerMenu @dailyAuto @dailyHomepageRegression @homePageHeaderRegression
  Scenario: User clicks on Header Join button on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: al_show_menu   |
      | click           |                    |
   Then we wait "1" seconds for the next page to load
   When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: close_nav      |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key         | prop_value                            |
      | activityLocation | Visitor : Home                        |
      | description      | Hamburger menu close in mobile header |
      | userId           |                                       |

@homePageSegmentHomePageHeaderJoinForFree @dailyAuto @dailyHomepageRegression @homePageHeaderRegression
  Scenario: User clicks on Header Join button on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: al_show_menu   |
      | click           |                    |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params      |    
      | move_to_element | id: nav_join_now   |
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


  @homePageSegmentHomePageHeaderSignIn @dailyAuto @dailyHomepageRegression @homePageHeaderRegression
  Scenario: User clicks on Header Sign In button on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
 When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: al_show_menu   |
      | click           |                    |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params      |    
      | move_to_element | id: nav_sign_in   |
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


  @homePageSegmentHeaderBuisnessCenter @dailyAuto @dailyHomepageRegression @homePageHeaderRegression
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



##### Body Tests #####


  @homePageBodySegmentHeroJoinCta @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentHeroSRCTAFindProsNoText @circleci @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentHeroSRCTAFindProsDropdown @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentSRCTAFindProsButton @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentSRCTAFindProsEnter @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentPlumbingPopularServiceQuickLink @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentRoofingPopularServiceQuickLink @dailyHomepageRegression @homePageBodyRegression
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

  @homePageBodySegmentHeatingCoolingPopularServiceQuickLink @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentElectricalPopularServiceQuickLink @dailyHomepageRegression @homePageBodyRegression
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


  @homePageBodySegmentLandscapingPopularServiceQuickLink @dailyHomepageRegression @homePageBodyRegression
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


@homePageBodySegmentHouseCleaningPopularServiceQuickLink @dailyHomepageRegression @homePageBodyRegression
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
  
  
  @homePageBodySegmentRemodelingPopularServiceQuickLink  @dailyHomepageRegression @homePageBodyRegression
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


@homePageBodySegmentPaintingPopularServiceQuickLink  @dailyHomepageRegression @homePageBodyRegression
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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


  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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


  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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


  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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


  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
  Scenario: User clicks on the footer San Antonio top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | id: footer-top-cities-san-antonio  |
      | click           |                                    |
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

  @homePageFooterSegmentTopCity  @dailyHomepageRegression @HomePageFooter
  Scenario: User clicks on the footer Tampa top city link on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | id: footer-top-cities-tampa-bay  |
      | click           |                                  |
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

  @homePageFooterSegmentJoinForFree  @dailyHomepageRegression @HomePageFooter
  Scenario: User clicks on the footer-left Join For Free icon on Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: footer--join-for-free  |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Join For Free link in footer      |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @homePageFooterSegmentCompanyList  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentNearMe  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentHowItWorks  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentSolutionCenter  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentPhotoGalleries  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentVideos  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentAnswers  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentBusinessOwners  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentInvestorRelations  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentAboutUs  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentCareers  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentFAQ  @dailyHomepageRegression @HomePageFooter
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


  @homePageFooterSegmentContactUs  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentJoin  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentiOS  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentGoogle  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTwitter  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentFaceBook  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentPinterest   @HomePageFooter
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

  @homePageFooterSegmentYouTube  @dailyHomepageRegression @HomePageFooter
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

  @homePageFooterSegmentTermsOfUse @dailyHomepageRegression @homePageFooter
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

  @homePageFooterSegmentPrivacyPolicy @dailyHomepageRegression @HomePageFooter
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

