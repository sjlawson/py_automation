Feature:

##### Header Tests #####

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
    And we wait "3" seconds for the next page to load
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
    And we wait "3" seconds for the next page to load
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
    And we wait "5" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @homePageSegmentHeaderInteriorApplianceRepair @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Appliance Repair in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/appliance-repair.htm"

  @homePageSegmentHeaderInteriorCarpetCleaning @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Carpet Cleaning in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(2) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/carpet-cleaning.htm"

  @homePageSegmentHeaderInteriorContractors @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Contractors in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(3) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/contractor.htm"

  @homePageSegmentHeaderInteriorDrywall @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Drywall in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(4) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/drywall.htm"

  @homePageSegmentHeaderInteriorElectrical @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Electrical in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(5) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/electrical.htm"

  @homePageSegmentHeaderInteriorFlooring @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Flooring in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(6) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/flooring.htm"

  @homePageSegmentHeaderInteriorHVAC @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Heating & Cooling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(7) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/hvac.htm"

  @homePageSegmentHeaderInteriorHouseCleaning @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on House Cleaning in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(8) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/house-cleaning.htm"

  @homePageSegmentHeaderInteriorPainting @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Interior Painting in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(9) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/interior-painting.htm"

  @homePageSegmentHeaderInteriorPlumbing @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Plumbing in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(10) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/plumbing.htm"

  @homePageSegmentHeaderInteriorRemodeling @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Remodeling in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(1) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(1) > div > ul > li:nth-child(11) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Interior menu category link in header    |
      | userId                 |                                   |
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/kitchen-and-bath-remodeling.htm"

  @homePageSegmentHeaderInteriorViewAll @daily_auto @daily_homepage_regression @header_regression
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
    And we wait "2" seconds for the next page to load
    And the landing URL contains "/companylist/"

  @homePageSegmentHeaderExteriorConcreteRepair @daily_auto @daily_homepage_regression @header_regression
  Scenario: User hovers then clicks on Concrete Repair in the header on the Drupal Homepage
    Given user is on a visitor site page
    """
    /
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #secondary-nav > ul > li:nth-child(2) > label > span |
      | click           | #secondary-nav > ul > li:nth-child(2) > div > ul > li:nth-child(1) > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : Home |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Exterior menu category link in header  |
      | userId                 |                                   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "/companylist/concrete-repair.htm"






##### Body Tests #####


  @homePageBodySegmentHeroJoinCta @daily_auto @daily_homepage_regression
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
    And we wait "3" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @homePageBodySegmentPlumbingPopularServiceQuickLink @daily_auto @daily_homepage_regression
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
      | categoryId             | 107                               |
      | categorySelected       | Plumbing                          |
      | homeAdvisorCategoryId  | 10216                             |
      | userId                 |                                   |
    And we wait "3" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Plumbing.10216.html?entry_point_id=32949645"


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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
    And we wait "2" seconds for the next page to load
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
