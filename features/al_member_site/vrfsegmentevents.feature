Feature:

  @vrfAccessibility
  Scenario: Vistor Review Form Accessibility Test
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines

  @vrfPageCall @vrfSegment
  Scenario: VRF Page Load Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value           |
      | name         | Member – Review – Form |
    Then the segment call contains parameters
      | prop_key          | prop_value                  |
      | name              | Member – Review – Form      |
      | path              | /member/reviews/edit        |
      | referrer          |                             |
      | search            |                             |
      | serviceProviderId | 1                           |
      | title             | Angie's List - Reviews      |
      | url               |                             |
      | userType          | Not Authenticated           |


  @vrfWorkDone @vrfSegment
  Scenario: VRF Cost Of Service Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                        |
      | move_to_element | id: reviews--workComplete-button-yes |
      | click           |                                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value  |
      | reviewSection  | Work Done   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | reviewSection     | Work Done         |
      | pathName          |                   |
      | serviceProviderId |                   |
      | userType          | Not Authenticated |
      | userResponse      |                   |


  @vrfCostOfServiceClick @vrfSegment
  Scenario: VRF Cost Of Service Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method     | action_params                       |
      | move_to_element   | id: review--cost-of-service-input   |
      | click             |      |
      | send_keys         | 1.00 |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                         |
      | description  | Review - Approximate cost of service |
    And the segment call contains parameters
      | prop_key          | prop_value                           |
      | description       | Review - Approximate cost of service |
      | pathName          |    |
      | serviceProviderId | 1  |
      | userType          | Not Authenticated |

  @vrfCalendar @vrfSegment
  Scenario: VRF Calendar Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params              |
      | move_to_element | id: calendar-input-input   |
      | click           |                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                                  |
      | description  | Approximate date of service (or last contact) |
    And the segment call contains parameters
      | prop_key          | prop_value                                    |
      | description       | Approximate date of service (or last contact) |
      | dateSelected      |    |
      | pathName          |    |
      | userType          | Not Authenticated |


  @vrfCategory @vrfSegment
  Scenario: VRF Category Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                        |
      | move_to_element | id: category-of-service-deselected   |
      | click           |                                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value       |
      | changeType   | Add                |
    And the segment call contains parameters
      | prop_key      | prop_value        |
      | changeType    | Add               |
      | categoryId    | |
      | autopopulated | |
      | categoryName  | |
      | pathName      | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfAttachment @vrfSegment
  Scenario: VRF Attachment Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: reviews--add-media-button   |
      | click           |      |
    Then a segment track call is sent for a unique field value pair
      | unique_field  | unique_value       |
      | description   | Review Form : Choose File Clicked |
    And the segment call contains parameters
      | prop_key       | prop_value        |
      | description    | Review Form : Choose File Clicked |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |







  @vrfSubmitExistingUser @reviewRegression
  Scenario: Submit review via VRF - existing user
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
     | action_method   | action_params                    |
     | move_to_element | id: reviews--rating-Overall--A   |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Price--A     |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Quality--A   |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Responsiveness--A    |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Punctuality--A       |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Professionalism--A   |
     | click           |                                          |
     | move_to_element | id: reviews--workComplete-button-yes     |
     | click           |                                          |
     | move_to_element | id: reviews--willHireAgain-button-yes    |
     | click           |                                          |
     | move_to_element | id: review--description-of-work-input    |
     | click           |                                          |
     | send_keys       | Automated testing is being done          |
     | move_to_element | id: review--how-did-it-go-input          |
     | click           |                                          |
     | send_keys       | Automated testing is being done          |
     | move_to_element | id: reviews--submit-button               |
     | click           |                                          |
    When a user performs actions
     | action_method   | action_params                 |
     | move_to_element | id: sign-in-toggle            |
     | click           |                               |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
     | action_method   | action_params                 |
     | move_to_element | id: signin-form--email        |
     | click           |                               |
     | send_keys       | test2-member@angieslist.com   |
     | move_to_element | id: signin-form--password     |
     | click           |                               |
     | send_keys       | qwerty1234!                   |
     | move_to_element | id: signin-form--submit       |
     | click           |                               |
    Then we wait "8" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/member?submissionconfirmation=true"



 # @vrfSubmitNewUser
 # Scenario: Submit review via VRF - New user
 #   Given a user is on a member site visitor review page
 #   """
 #   /member/reviews/edit?serviceProviderId=1
 #   """
 #   When a user performs actions
 #    | action_method   | action_params                    |
 #    | move_to_element | id: reviews--rating-Overall--A   |
 #    | click           |                                  |
 #    | move_to_element | id: reviews--rating-Price--A     |
 #    | click           |                                  |
 #    | move_to_element | id: reviews--rating-Quality--A   |
 #    | click           |                                  |
 #    | move_to_element | id: reviews--rating-Responsiveness--A    |
 #    | click           |                                          |
 #    | move_to_element | id: reviews--rating-Punctuality--A       |
 #    | click           |                                          |
 #    | move_to_element | id: reviews--rating-Professionalism--A   |
 #    | click           |                                          |
 #    | move_to_element | id: reviews--workComplete-button-yes     |
 #    | click           |                                          |
 #    | move_to_element | id: reviews--willHireAgain-button-yes    |
 #    | click           |                                          |
 #    | move_to_element | id: review--description-of-work-input    |
 #    | click           |                                          |
 #    | send_keys       | 49726 49726 49726                        |
 #    | move_to_element | id: review--how-did-it-go-input          |
 #    | click           |                                          |
 #    | send_keys       | 49726  4972649726                        |
 #    | move_to_element | id: reviews--submit-button               |
 #    | click           |                                          |
 #   Then we wait "1" seconds for the next page to load
 #   When a user performs actions
 #    | action_method   | action_params                 |
 #    | move_to_element | id: sign-up-toggle            |
 #    | click           |                               |
 #   Then we wait "1" seconds for the next page to load
 #   When a user performs actions
 #    | action_method   | action_params                 |
 #    | move_to_element | id: signup-form--email        |
 #    | click           |                               |
 #    | send_keys       | test   |
 #    | move_to_element | id: signup-form--first-name     |
 #    | click           |                               |
 #    | send_keys       | qwerty1234!                   |
 #    | move_to_element | id: signup-form--last-name       |
 #    | click           |   |
 #    | send_keys       | qwerty1234!                   |
 #    | move_to_element | id: signup-form--password       |
 #    | click           |   |
 #    | send_keys       | qwerty1234!                   |
 #   Then we wait "8" seconds for the next page to load
 #   Then the landing URL contains ".angieslist.com/member?submissionconfirmation=true"