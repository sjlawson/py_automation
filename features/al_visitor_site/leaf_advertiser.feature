Feature:
  @donna
  Scenario: segment page call for Advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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
      | marketId               | 13                                                                                      |
      | name                   | Visitor : SP Profile                                                                    |
      | pageVersion            | Lullabot Redesign                                                                       |
      | path                   | /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm                        |
      | referrer               |                                                                                         |
      | search                 |                                                                                         |
      | srCtaDisplayed         | false                                                                                   |
      | srCtaVersion           |                                                                                         |
      | title                  | Green Leaf Air Reviews - Richardson, TX &vert; Angie's List                             |
      | url                    |                                                                                         |
      | userId                 |                                                                                         |
      | userType               | Visitor - New                                                                           |
      | visitorPageCategory    | PLUMBING                                                                                |
      | visitorPageGeo         | RICHARDSON                                                                              |
      | visitorPageGeoCategory | RICHARDSON - PLUMBING                                                                   |


##### Header Tests #####

  Scenario: user clicks header sign-in on advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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

  Scenario: user clicks header sign-in on new advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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

  Scenario: user clicks header sign-in on non advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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

  Scenario: user clicks header join on advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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

  Scenario: user clicks header join on new advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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

  Scenario: user clicks join on non advertiser
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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



##### Body Tests #####

  Scenario: RAQ click on Leaf Advertiser.
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
    """
    When a user performs actions
      | action_method | action_params   |
      | click         | css: #block-system-main > div > div.grayRow.leaf--row__top > div > div.leaf__top-left > div.grayRow.leaf__contact-us > div > div.leaf-contact-us__contact-link > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                      |
      | description  | Request a Quote button |
    And the segment call contains parameters
      | prop_key                | prop_value              |
      | activityLocation        | Visitor : SP Profile    |
      | description             | Request a Quote button  |
      | legacyServiceProviderId | 8993301                 |
      | marketId                | 13                      |
      | overallReviewGrade      |                         |
      | reviewCount             |                         |
      | userId                  |                         |
      | visitorPageCategory     |                         |
      | visitorPageGeo          |                         |
      | visitorPageGeoCategory  |                         |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/lead/request_a_quote/8993301/project?categoryId=107&placementType=Web_LeafPage&withAlId=8993301"

  Scenario: Click on first offer - Advertiser Leaf
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
    """
    When a user performs actions
      | action_method | action_params   |
      | click         | css: #offers > div.owl-wrapper-outer > div > div:nth-child(1) |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value  |
      | description  | View Deal CTA |
    And the segment call contains parameters
      | prop_key                | prop_value               |
      | activityLocation        | Visitor : SP Profile     |
      | dealsDisplayed          |                          |
      | description             | View Deal CTA            |
      | gradeDisplayed          |                          |
      | marketId                |                          |
      | offerId                 |                          |
      | priceDisplayed          |                          |
      | rank                    |                          |
      | serviceProviderId       |                          |
      | userId                  |                          |
      | visitorPageCategory     | PLUMBING                 |
      | visitorPageGeo          | RICHARDSON               |
      | visitorPageGeoCategory  | RICHARDSON - PLUMBING    |

    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "placementType=Web_LeafPage"

  Scenario: Click on button - first offer - Advertiser Leaf
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
    """
    When a user performs actions
      | action_method | action_params   |
      | click         | css: #offer-51954 > a > div:nth-child(5) > button |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                      |
      | description  | View Deal CTA |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       | Visitor : SP Profile        |
      | description            | View Deal CTA               |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "placementType=Web_LeafPage"




##### Footer #####


  ## Footer Join Leaf Page Advertiser
  ## footerJoinCTAAdvertiser (L470)
  Scenario: User clicks FOOTER join link on advertiser leaf page
    Given user is on a visitor site page
    """
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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
    /companylist/us/tx/richardson/green-leaf-air-reviews-8993301.htm
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
