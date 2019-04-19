Feature:

##### Header Tests #####

  @homePageSegmentPagecall @daily_auto @daily_homepage_regression
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
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Home                    |
      | description            | Join link in header               |
      | userId                 |                                   |

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


##### Footer Tests #####

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
