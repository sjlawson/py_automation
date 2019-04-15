Feature:

  @homePageSegmentPagecall  @daily_auto
  Scenario: testing segment pagecall on homepage
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
  Scenario: testing segment pagecall on homepage
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

@homePageSegmentHeroJoinCta

  Scenario: User clicks on hero Join button on homepage
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
