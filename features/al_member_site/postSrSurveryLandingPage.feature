Feature:

  @postSrLandingAccessibilityStillDeciding
  Scenario: Vistor Post SR Survery Landing Page still_deciding Accessibility Test
    Given a user is on a member site SR Still Deciding page
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines

  @postSrLandingAccessibilityWorkingWith
  Scenario: Vistor Post SR Survery Landing Page working_with_pro Accessibility Test
    Given a user is on a member site SR Working With Pro page
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines


  @postSrLandingAccessibilityNoContact
  Scenario: Vistor Post SR Survery Landing Page no_contact Accessibility Test
    Given a user is on a member site SR No Contact page
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines


  @postSrLandingAccessibilityNoLonger
  Scenario: Vistor Post SR Survery Landing Page no_longer_doing Accessibility Test
    Given a user is on a member site SR No Longer Doing page
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines


  @workingWithAProPageLoadSegment @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page working_with_pro Segment Page Load
    Given a user is on a member site SR Working With Pro page
    When a segment page call is sent for a unique field value pair
      | unique_field      | unique_value           |
      | description       | PostSR Landing Page - Working with a pro |
    Then the segment call contains parameters
      | prop_key          | prop_value                  |
      | description       | PostSR Landing Page - Working with a pro |
      | epid              | 34138795 |
      | name              | Visitor : SR Survey Landing Page |
      | path              |         |
      | referrer          |         |
      | search            |         |
      | title             | Visitor - SR Survey Landing Page - Working with a pro - Angie's List |
      | url               |         |
    Then the landing URL contains ".angieslist.com/app/lead/survey/sr/working_with_pro?entry_point_id=34138795"


  @stillDecidingPageLoadSegment @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page still_deciding Segment Page Load
    Given a user is on a member site SR Still Deciding page
    When a segment page call is sent for a unique field value pair
      | unique_field      | unique_value           |
      | description       | PostSR Landing Page - Still deciding |
    Then the segment call contains parameters
      | prop_key          | prop_value                  |
      | description       | PostSR Landing Page - Still deciding |
      | epid              | 34138796 |
      | name              | Visitor : SR Survey Landing Page |
      | path              |         |
      | referrer          |         |
      | search            |         |
      | title             | Visitor - SR Survey Landing Page - Still deciding - Angie's List |
      | url               |         |
    Then the landing URL contains ".angieslist.com/app/lead/survey/sr/still_deciding?entry_point_id=34138796"


  @noContactsPageLoadSegment @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page no_contact Segment Page Load
    Given a user is on a member site SR No Contact page
    When a segment page call is sent for a unique field value pair
      | unique_field      | unique_value           |
      | description       | PostSR Landing Page - No one contacted |
    Then the segment call contains parameters
      | prop_key          | prop_value             |
      | description       | PostSR Landing Page - No one contacted |
      | epid              | 34138797 |
      | name              | Visitor : SR Survey Landing Page |
      | path              |         |
      | referrer          |         |
      | search            |         |
      | title             | Visitor - SR Survey Landing Page - No one contacted - Angie's List |
      | url               |         |
    Then the landing URL contains ".angieslist.com/app/lead/survey/sr/no_contact?entry_point_id=34138797"


  @noLongerDoingPageLoadSegment @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page no_longer_doing Segment Page Load
    Given a user is on a member site SR No Longer Doing page
    When a segment page call is sent for a unique field value pair
      | unique_field      | unique_value           |
      | description       | PostSR Landing Page - Not doing project |
    Then the segment call contains parameters
      | prop_key          | prop_value             |
      | description       | PostSR Landing Page - Not doing project |
      | epid              | 34138798 |
      | name              | Visitor : SR Survey Landing Page |
      | path              |         |
      | referrer          |         |
      | search            |         |
      | title             | Visitor - SR Survey Landing Page - Not doing project - Angie's List |
      | url               |         |
    Then the landing URL contains ".angieslist.com/app/lead/survey/sr/no_longer_doing?entry_point_id=34138798"


  @workingWithProClick @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page working_with_pro Segment Click
    Given a user is on a member site SR Working With Pro page
    When a user performs actions
      | action_method   | action_params                        |
      | move_to_element | id: post-sr--find-more |
      | click           |                                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field      | unique_value  |
      | activityLocation  | Visitor : SR Survey Landing Page   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | activityLocation  | Visitor : SR Survey Landing Page          |
      | description       | PostSR Landing Page - Working with a pro  |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/?entry_point_id=34138795"

  @workingWithProVBC
  Scenario: Post SR Survery Landing Page working_with_pro header VBC Click
    Given a user is on a member site SR Working With Pro page
    When a user performs actions
      | action_method   | action_params                                 |
      | move_to_element | css: #header-right-nav--visit-business-center |
      | click           | css: #header-right-nav--visit-business-center |
    Then a segment track call is sent for a unique field value pair
      | unique_field      | unique_value  |
      | activityLocation  | Unauth Header   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | activityLocation  | Unauth Header          |
      | description       | Visit Business Center  |
      | userType          | Not Authenticated |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains "?entry_point_id=34138795"


  @stillDecidingClick @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page still_deciding Segment Click
    Given a user is on a member site SR Still Deciding page
    When a user performs actions
      | action_method   | action_params          |
      | move_to_element | id: post-sr--find-more |
      | click           |                        |
    Then a segment track call is sent for a unique field value pair
      | unique_field      | unique_value  |
      | description       | PostSR Landing Page - Still deciding     |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | description       | PostSR Landing Page - Still deciding  |
      | activityLocation  | Visitor : SR Survey Landing Page      |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/?entry_point_id=34138796"


  @noContactClick @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page no_contact Segment Click
    Given a user is on a member site SR No Contact page
    When a user performs actions
      | action_method   | action_params          |
      | move_to_element | id: post-sr--find-more |
      | click           |                        |
    Then a segment track call is sent for a unique field value pair
      | unique_field      | unique_value  |
      | activityLocation  | Visitor : SR Survey Landing Page     |
    And the segment call contains parameters
      | prop_key            | prop_value        |
      | activityLocation    | Visitor : SR Survey Landing Page  |
      | description         | PostSR Landing Page - No one contacted |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/?entry_point_id=34138797"


  @noLongerDoingClick @postSrLandingFeature
  Scenario: Vistor Post SR Survery Landing Page no_contact Segment Click
    Given a user is on a member site SR No Longer Doing page
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: post-sr--find-more  |
      | click           |                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field  | unique_value  |
      | description   | PostSR Landing Page - Not doing project     |
    And the segment call contains parameters
      | prop_key            | prop_value        |
      | description         | PostSR Landing Page - Not doing project  |
      | activityLocation    | Visitor : SR Survey Landing Page  |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/?entry_point_id=34138798"

