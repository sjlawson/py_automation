@leafPages @daily_auto
Feature:

  ## basic leaf page call test for Leaf Non-Advertiser HA crossover One-Column
  ## test_leafPageSegmentPagecallAdvertisers (L11)
  Scenario: segment page call for non-advertise HA crossover one column
    Given user is on a visitor site page
    """
    /companylist/us/ga/atlanta/aaa-plumbing-heating-and-air-conditioning-reviews-101241.htm?CacheBuster
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    Then the segment call contains parameters
      | prop_key               | prop_value                                                                              |
      | atTestOffer            |                                                                                         |
      | categoryId             | 107                                                                                     |
      | cid                    |                                                                                         |
      | homeAdvisorCategoryId  | 10216                                                                                   |
      | marketId               |                                                                                         |
      | name                   | Visitor : SP Profile                                                                    |
      | pageVersion            | Lullabot Redesign                                                                       |
      | path                   | /companylist/us/ga/atlanta/aaa-plumbing-heating-and-air-conditioning-reviews-101241.htm |
      | referrer               |                                                                                         |
      | search                 | ?CacheBuster                                                                           |
      | srCtaDisplayed         | True                                                                                    |
      | srCtaVersion           | v2                                                                                      |
      | title                  | AAA Plumbing Heating & Air Conditioning Reviews - Atlanta, GA &vert; Angie's List       |
      | url                    |                                                                                         |
      | userId                 |                                                                                         |
      | userType               | Visitor - New                                                                           |
      | visitorPageCategory    | PLUMBING                                                                                |
      | visitorPageGeo         | ATLANTA                                                                                 |
      | visitorPageGeoCategory | ATLANTA - PLUMBING                                                                      |


  ## basic leaf page call test for new advertisers
  ## test_leafPageSegmentPagecallNewAdvertisers (L48)
  Scenario: segment page call for new advertiser leaf page
    Given user is on a visitor site page
    """
    /companylist/us/tn/memphis/all-about-u-heating-and-air-reviews-8499678.htm
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    Then the segment call contains parameters
      | prop_key               | prop_value                                                        |
      | atTestOffer            |                                                                   |
      | categoryId             | 78                                                                |
      | cid                    |                                                                   |
      | homeAdvisorCategoryId  | 10211                                                             |
      | marketId               |                                                                   |
      | name                   | Visitor : SP Profile                                              |
      | pageVersion            | Lullabot Redesign                                                 |
      | path                   | /companylist/us/tn/memphis/all-about-u-heating-and-air-reviews-8499678.htm |
      | referrer               |                                                                   |
      | search                 | ?CacheBuster                                                      |
      | srCtaDisplayed         | True                                                              |
      | srCtaVersion           | v2                                                                |
      | title                  | All about u heating & air Reviews - Memphis, &vert; Angie's List  |
      | url                    |                                                                   |
      | userId                 |                                                                   |
      | userType               | Visitor - New                                                     |
      | visitorPageCategory    | HEATING & A/C                                                     |
      | visitorPageGeo         | MEMPHIS                                                           |
      | visitorPageGeoCategory | MEMPHIS - HEATING & A/C                                           |


  ## basic leaf page call test for non-advertisers
  ## test_leafPageSegmentPagecallNonAdvertisers (L85)
  Scenario: segment page call for non advertiser leaf page
    Given user is on a visitor site page
    """
    /companylist/us/ky/louisville/lock-doctor-llc-reviews-6314008.htm?CacheBuster
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value         |
      | name         | Visitor : SP Profile |
    Then the segment call contains parameters
      | prop_key               | prop_value                                                        |
      | atTestOffer            |                                                                   |
      | categoryId             | 377                                                               |
      | cid                    |                                                                   |
      | homeAdvisorCategoryId  | 12024                                                             |
      | marketId               | 41                                                                |
      | name                   | Visitor : SP Profile                                              |
      | pageVersion            | Lullabot Redesign                                                 |
      | path                   | /companylist/us/ky/louisville/lock-doctor-llc-reviews-6314008.htm |
      | referrer               |                                                                   |
      | search                 | ?CacheBuster                                                      |
      | srCtaDisplayed         | True                                                              |
      | srCtaVersion           | v2                                                                |
      | title                  | Lock Doctor LLC Reviews - Louisville, KY &vert; Angie's List      |
      | url                    |                                                                   |
      | userId                 |                                                                   |
      | userType               | Visitor - New                                                     |
      | visitorPageCategory    | DOORS                                                             |
      | visitorPageGeo         | LOUISVILLE                                                        |
      | visitorPageGeoCategory | LOUISVILLE - DOORS                                                |


  ## Sign In Header Leaf Page Advertiser
  ## SignInHeaderLeafAdvertiser (L142)
  Scenario: user clicks header sign-in on advertiser
    Given user is on a visitor site page
    """
    /companylist/us/nv/las-vegas/brick-art-masonry-reviews-6291023.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Sign In link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                              |
      | activityLocation       | Visitor : SP Profile                    |
      | description            | Sign In link in header                  |
      | marketId               | 35                                      |
      | userId                 |                                         |
      | visitorPageCategory    | Concrete - Pouring & Repair             |
      | visitorPageGeo         | LAS VEGAS                               |
      | visitorPageGeoCategory | LAS VEGAS - CONCRETE - POURING & REPAIR |

  ## Header Sign In  Leaf Page New Advertiser
  ## SignInHeaderLeafnewAdvertiser (L165)
  Scenario: user clicks header sign-in on new advertiser
    Given user is on a visitor site page
    """
    /companylist/us/fl/miami/advanced-turf-property-maintenance-reviews-5966518.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Sign In link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile               |
      | description            | Sign In link in header             |
      | marketId               | 31                                 |
      | userId                 |                                    |
      | visitorPageCategory    | Landscaping                        |
      | visitorPageGeo         | MIAMI                              |
      | visitorPageGeoCategory | MIAMI - LANDSCAPING                |


  ## Header Sign In Leaf Page NON Advertiser (L189)
  ## SignInHeaderLeafnonAdvertiser
  Scenario: user clicks header sign-in on non advertiser
    Given user is on a visitor site page
    """
    /companylist/us/wi/milwaukee/andrea-haas-reviews-420334.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #header-sign-in |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Sign In link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : SP Profile           |
      | description            | Sign In link in header         |
      | marketId               | 3                              |
      | userId                 |                                |
      | visitorPageCategory    | Real Estate Agents             |
      | visitorPageGeo         | MILWAUKEE                      |
      | visitorPageGeoCategory | MILWAUKEE - REAL ESTATE AGENTS |


  ## Header Join Leaf page Advertiser
  ## headerJoinCTAAdvertiser (L214)
  Scenario: user clicks header join on advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tn/nashville/a1-remodeling%2Ca1-kitchen-and-bath-reviews-2284753.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : SP Profile |
      | description            | Join link in header  |
      | marketId               | 34                   |
      | userId                 |                      |
      | visitorPageCategory    | Plumbing             |
      | visitorPageGeo         | NASHVILLE            |
      | visitorPageGeoCategory | NASHVILLE - PLUMBING |


  ## Header Join Leaf page New Advertiser (L239)
  ## headerJoinCTAnewAdvertiser
  Scenario: user clicks header join on new advertiser
    Given user is on a visitor site page
    """
    /companylist/us/ny/albany/ims-moving-and-property-preservation-reviews-8191745.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
    And the segment call contains parameters
      | prop_key               | prop_value           |
      | activityLocation       | Visitor : SP Profile |
      | description            | Join link in header  |
      | marketId               | 52                   |
      | userId                 |                      |
      | visitorPageCategory    | Handymen             |
      | visitorPageGeo         | ALBANY               |
      | visitorPageGeoCategory | ALBANY - HANDYMEN    |


  # Header Join Leaf page NON Advertiser (L264)
  # def headerJoinCTAnonAdvertiser
  Scenario: user clicks join on non advertiser
    Given user is on a visitor site page
    """
    /companylist/us/ky/louisville/a-cheaper-locksmith-reviews-6238590.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #header-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value        |
      | description  | Join link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       | Visitor : SP Profile      |
      | description            | Join link in header       |
      | marketId               | 41                        |
      | userId                 |                           |
      | visitorPageCategory    | Auto Service              |
      | visitorPageGeo         | LOUISVILLE                |
      | visitorPageGeoCategory | LOUISVILLE - AUTO SERVICE |


  # line 308
  ## leafPageSegmentCTAwithoutZIP
  ## Body - SR ha-lead-submit-v2 w/o postal code Leaf Page Advertiser
  Scenario: SR ha-lead-submit-v2 w/o postal code Leaf Page Advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/houston/2-brothers-home-remodeling-reviews-8990024.htm
    """
    When a user performs actions
      | action_method | action_params   |
      | click         | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                      |
      | description  | Service Request Flow entry button |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | categoryId             | 112                               |
      | description            | Service Request Flow entry button |
      | marketId               | 15                                |
      | userId                 |                                   |
      | userSelectedZipCode    |                                   |
      | visitorPageCategory    | Roofing                           |
      | visitorPageGeo         | HOUSTON                           |
      | visitorPageGeoCategory | HOUSTON - ROOFING                 |
      | homeAdvisorCategoryId  | 12061                             |

  ## line 334
  ## leafPageSegmentCTAwithoutZIPAdvertiser
  Scenario: SR ha-lead-submit-v2 w/o postal code Leaf Page New Advertiser
    Given user is on a visitor site page
    """
    /companylist/us/mn/minneapolis/a-fine-line-painting-company-reviews-3397176.htm
    """
    When a user performs actions
      | action_method | action_params   |
      | click         | #ha-lead-submit |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                      |
      | description  | Service Request Flow entry button |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | categoryId             | 294                               |
      | description            | Service Request Flow entry button |
      | marketId               | 8                                 |
      | userId                 |                                   |
      | userSelectedZipCode    |                                   |
      | visitorPageCategory    | Painting - Interior               |
      | visitorPageGeo         | MINNEAPOLIS                       |
      | visitorPageGeoCategory | MINNEAPOLIS - PAINTING - INTERIOR |
      | homeAdvisorCategoryId  | 10381                             |


  ## leafPageSegmentCTAwithZIPAdvertiser (L359)
  Scenario: User fills zipcode on Leaf CTA
    Given user is on a visitor site page
    """
    /companylist/us/nc/raleigh/alpha-omega-construction-group-inc-reviews-8807061.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-zip    |
      | send_keys       | 27610              |
      | move_to_element | id: ha-lead-submit |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                      |
      | description  | Service Request Flow entry button |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | categoryId             | 112                               |
      | description            | Service Request Flow entry button |
      | marketId               | 40                                |
      | userId                 |                                   |
      | userSelectedZipCode    | 27610                             |
      | visitorPageCategory    | Roofing                           |
      | visitorPageGeo         | RALEIGH                           |
      | visitorPageGeoCategory | RALEIGH - ROOFING                 |


  ## Body - SR ha-lead-submit-v2 with postal code Leaf Page New Advertiser
  ## leafPageSegmentCTAwithZIPNewAdvertiser (L391)
  Scenario: User fills zipcode on Leaf CTA New Advertiser
    Given user is on a visitor site page
    """
    /companylist/us/co/denver/all-city-movers-reviews-4173765.htm
    """
    When a user performs actions
      | action_method   | action_params      |
      | move_to_element | id: ha-lead-zip    |
      | send_keys       | 80123              |
      | move_to_element | id: ha-lead-submit |
      | click           |                    |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                      |
      | description  | Service Request Flow entry button |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : SP Profile              |
      | categoryId             | 98                                |
      | description            | Service Request Flow entry button |
      | homeAdvisorCategoryId  | 12050                             |
      | marketId               | 27                                |
      | userId                 |                                   |
      | userSelectedZipCode    | 80123                             |
      | visitorPageCategory    | Moving                            |
      | visitorPageGeo         | DENVER                            |
      | visitorPageGeoCategory | DENVER - MOVING                   |


  ## Footer Join Leaf Page Advertiser
  ## footerJoinCTAAdvertiser (L470)
  Scenario: User clicks FOOTER join link on advertiser leaf page
    Given user is on a visitor site page
    """
    /companylist/us/nc/charlotte/all-phaze-electric-llc-reviews-8841148.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Join button in footer |
    And the segment call contains parameters
      | prop_key               | prop_value             |
      | activityLocation       | Visitor : SP Profile   |
      | description            | Join button in footer  |
      | marketId               | 10                     |
      | userId                 |                        |
      | visitorPageCategory    | Electrical             |
      | visitorPageGeo         | CHARLOTTE              |
      | visitorPageGeoCategory | CHARLOTTE - ELECTRICAL |


  ## Footer Join Leaf Page New Advertiser
  ## footerJoinCTANewAdvertiser (L495)
  Scenario: User clicks FOOTER join link on NEW advertiser leaf page
    Given user is on a visitor site page
    """
    /companylist/us/az/phoenix/altaquip-llc-reviews-3708698.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Join button in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       | Visitor : SP Profile               |
      | description            | Join button in footer              |
      | marketId               | 20                                 |
      | userId                 |                                    |
      | visitorPageCategory    | Appliance Repair - Large           |
      | visitorPageGeo         | PHOENIX                            |
      | visitorPageGeoCategory | PHOENIX - APPLIANCE REPAIR - LARGE |


  ## test segment call on clicking the Join link in the footer
  ## leafPageSegmentFooterJoinClick (L519)
  Scenario: User clicks FOOTER join link leaf page
    Given user is on a visitor site page
    """
    /companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Join button in footer |
    And the segment call contains parameters
      | prop_key         | prop_value            |
      | activityLocation | Visitor : SP Profile  |
      | description      | Join button in footer |


  ## Footer Join Leaf Page NON Advertiser
  ## footerJoinCTAnonAdvertiser (L789)
  Scenario: User clicks FOOTER join link on NEW advertiser leaf page
    Given user is on a visitor site page
    """
    /companylist/us/oh/cleves/asap-critter-people-reviews-259270.htm
    """
    When a user performs actions
      | action_method | action_params |
      | click         | #footer-join  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value          |
      | description  | Join button in footer |
    And the segment call contains parameters
      | prop_key               | prop_value             |
      | activityLocation       | Visitor : SP Profile   |
      | description            | Join button in footer  |
      | marketId               | 6                      |
      | userId                 |                        |
      | visitorPageCategory    | Heating & A/C          |
      | visitorPageGeo         | CLEVES                 |
      | visitorPageGeoCategory | CLEVES - HEATING & A/C |

  @leafTopCities
  Scenario Outline: leaf page top cities
    Given user is on a visitor site page
    """
    /companylist/us/in/indianapolis/absolute-restoration-llc-reviews-9039535.htm?CacheBuster
    """
    When a user clicks on "<pageLink>"
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value              |
      | description  | Top Cities link in footer |
    And the segment call contains parameters
      | prop_key         | prop_value                |
      | description      | Top Cities link in footer |
      | activityLocation | Visitor : SP Profile      |
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
