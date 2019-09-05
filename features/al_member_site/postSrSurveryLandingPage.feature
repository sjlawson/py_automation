@postSrLandingFeature
Feature:

  @postSrLandingAccessibility
  Scenario: Vistor Post SR Survery Landing Page still_deciding Accessibility Test
    Given a user is on a member site visitor page
    """
    /app/lead/survey/sr/still_deciding?entry_point_id=341387965
    """
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines

  @postSrLandingAccessibility
  Scenario: Vistor Post SR Survery Landing Page working_with_pro Accessibility Test
    Given a user is on a member site visitor page
    """
    /app/lead/survey/sr/working_with_pro?entry_point_id=34138795
    """
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines


  @postSrLandingAccessibility
  Scenario: Vistor Post SR Survery Landing Page no_contact Accessibility Test
    Given a user is on a member site visitor page
    """
    /app/lead/survey/sr/no_contact?entry_point_id=34138797
    """
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines


  @postSrLandingAccessibility
  Scenario: Vistor Post SR Survery Landing Page no_longer_doing Accessibility Test
    Given a user is on a member site visitor page
    """
    /app/lead/survey/sr/no_longer_doing?entry_point_id=34138798
    """
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines


  @workingWithAProPageLoadSegment
  Scenario: Vistor Post SR Survery Landing Page working_with_pro Segment Page Load
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/working_with_pro?entry_point_id=34138795
    """
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


  @stillDecidingPageLoadSegment
  Scenario: Vistor Post SR Survery Landing Page still_deciding Segment Page Load
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/still_deciding?entry_point_id=34138796
    """
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


  @noContactsPageLoadSegment
  Scenario: Vistor Post SR Survery Landing Page no_contact Segment Page Load
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/no_contact?entry_point_id=34138797
    """
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


  @noLongerDoingPageLoadSegment
  Scenario: Vistor Post SR Survery Landing Page no_longer_doing Segment Page Load
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/no_longer_doing?entry_point_id=34138798
    """
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

  @workingWithProClick
  Scenario: Vistor Post SR Survery Landing Page working_with_pro Segment Click
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/working_with_pro?entry_point_id=34138795
    """
    When a user performs actions
      | action_method   | action_params                        |
      | move_to_element | id: post-sr--find-more |
      | click           |                                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field      | unique_value  |
      | activityLocation  | Visitor : SR Survey Landing Page   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | activityLocation  | Visitor : SR Survey Landing Page         |
      | description       | PostSR Landing Page - Working with a pro                  |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/?entry_point_id=34138795"


  @stillDecidingClick
  Scenario: Vistor Post SR Survery Landing Page still_deciding Segment Click
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/still_deciding?entry_point_id=34138796
    """
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


  @noContactClick
  Scenario: Vistor Post SR Survery Landing Page no_contact Segment Click
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/no_contact?entry_point_id=34138797
    """
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


  @noLongerDoingClick
  Scenario: Vistor Post SR Survery Landing Page no_contact Segment Click
    Given a user is on a member site visitor review page
    """
    /app/lead/survey/sr/no_longer_doing?entry_point_id=34138798
    """
    When a user performs actions
      | action_method   | action_params           |
      | move_to_element | id: post-sr--find-more  |
      | click           |   |
    Then a segment track call is sent for a unique field value pair
      | unique_field  | unique_value  |
      | description   | PostSR Landing Page - Not doing project     |
    And the segment call contains parameters
      | prop_key        | prop_value        |
      | description     | PostSR Landing Page - Not doing project  |
      | activityLocation    | Visitor : SR Survey Landing Page  |
    Then we wait "1" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/?entry_point_id=34138798"

