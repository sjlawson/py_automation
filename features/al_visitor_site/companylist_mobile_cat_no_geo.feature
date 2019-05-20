Feature:

##### Mobile Header Tests #####


  @catNoGeoSegHeadOpenMobile @mobileOnlyRegression
  Scenario: User clicks hamburger(mobile) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       | Visitor : CatNoGeo              |
      | description            | Hamburger menu open in mobile header  |
      | userId                 |                                 |

  @catNoGeoSegHeadCloseMobile @mobileOnlyRegression
  Scenario: User clicks hamburger (Mobile) then clicks the X(mobile) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value                             |
      | activityLocation       | Visitor : CatNoGeo                     |
      | description            | Hamburger menu close in mobile header  |
      | userId                 |                                        |

  @catNoGeoSegHeadJoinNowMobile @mobileOnlyRegression
  Scenario: User clicks hamburger (Mobile) then clicks on Join Now(Mobile) in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul.col-50-50 > li:nth-child(1)> li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Join Now link in header  |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @catNoGeoSegHeadSignInMobile @mobileOnlyRegression
  Scenario: User clicks hamburger (Mobile) then clicks on Sign In in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul.col-50-50 > li:nth-child(2)> li |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Sign In link in header   |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @catNoGeoSegHeadBusinessOwnerMobile @mobileOnlyRegression
  Scenario: User clicks hamburger (Mobile) then clicks on Business Owner in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul:nth-child(4) > a > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Business Owners link in header   |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @catNoGeoSegHeadNearMeMobile @mobileOnlyRegression
  Scenario: User clicks hamburger (Mobile) then clicks on NearMe link in the header on the Drupal CatNoGeo
    Given user is on a visitor site catnogeo page
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | #al_show_menu > a > i |
      | click           | #al_show_menu > a > i |
      | click           | #mobile-navigation > div > ul:nth-child(3) > a > a |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | activityLocation | Visitor : CatNoGeo |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       | Visitor : CatNoGeo       |
      | description            | Near Me link in mobile header   |
      | userId                 |                          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"
