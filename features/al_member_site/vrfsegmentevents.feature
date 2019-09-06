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


  @vrfOverallGradeA @vrfSegment @letterGrades
  Scenario: VRF Overall Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: reviews--rating-Overall--A  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field    | unique_value  |
      | overallGrade    | A |
    And the segment call contains parameters
      | prop_key          | prop_value    |
      | overallGrade      | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfPriceGradeA @vrfSegment @letterGrades
  Scenario: VRF Price Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: reviews--rating-Price--A  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field  | unique_value  |
      | priceGrade    | A |
    And the segment call contains parameters
      | prop_key          | prop_value    |
      | priceGrade        | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfQualityGradeA @vrfSegment @letterGrades
  Scenario: VRF Quality Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: reviews--rating-Quality--A  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field    | unique_value  |
      | qualityGrade    | A |
    And the segment call contains parameters
      | prop_key          | prop_value    |
      | qualityGrade      | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfResponsivenessGradeA @vrfSegment @letterGrades
  Scenario: VRF Responsiveness Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                          |
      | move_to_element | id: reviews--rating-Responsiveness--A  |
      | click           |                                        |
    Then a segment track call is sent for a unique field value pair
      | unique_field    | unique_value  |
      | responsivenessGrade    | A |
    And the segment call contains parameters
      | prop_key          | prop_value    |
      | responsivenessGrade      | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfPunctualityGradeA @vrfSegment @letterGrades
  Scenario: VRF Punctuality Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: reviews--rating-Punctuality--A  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field        | unique_value  |
      | punctualityGrade    | A |
    And the segment call contains parameters
      | prop_key          | prop_value  |
      | punctualityGrade  | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfProfessionalismGradeA @vrfSegment @letterGrades
  Scenario: VRF Professionalism Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | id: reviews--rating-Professionalism--A  |
      | click           |                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field            | unique_value  |
      | professionalismGrade    | A |
    And the segment call contains parameters
      | prop_key              | prop_value  |
      | professionalismGrade  | A |
      | autopopulated         | false |
      | pathName              | |
      | serviceProviderId     | |
      | userType              | Not Authenticated |


  @vrfWorkDoneYes @vrfSegment
  Scenario: VRF Work Done Click Event - Yes
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
      | userResponse      | Yes               |


  @vrfWorkDoneNo @vrfSegment
  Scenario: VRF Work Done Click Event - No
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                        |
      | move_to_element | id: reviews--workComplete-button-no |
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
      | userResponse      | No                |


  @vrfHireAgainYes @vrfSegment
  Scenario: VRF Hire Again Click Event - Yes
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: reviews--willHireAgain-button-yes |
      | click           |                                       |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | reviewSection  | Hire Again   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | reviewSection     | Hire Again   |
      | serviceProviderId |  |
      | userResponse      | Yes |
      | userType          | Not Authenticated |


  @vrfHireAgainNo @vrfSegment
  Scenario: VRF Hire Again Click Event - No
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: reviews--willHireAgain-button-no |
      | click           |                                       |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | reviewSection  | Hire Again   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | reviewSection     | Hire Again   |
      | serviceProviderId |  |
      | userResponse      | No |
      | userType          | Not Authenticated |


  @vrfHowDidItGo @vrfSegment
  Scenario: VRF How Did It Go
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: review--description-of-work-input |
      | click           |                                       |
      | send_keys       | This is an automated test! |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | description    | Review - What work did you need done?   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | description       | Review - What work did you need done?   |
      | serviceProviderId |  |
      | pathName          |  |
      | userType          | Not Authenticated |


  @vrfWhatWork @vrfSegment
  Scenario: VRF How Did It Go - With Text
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: review--description-of-work-input |
      | click           |                                       |
      | send_keys       | This is an automated test! |
      | click           | id: review--how-did-it-go-input  |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | description    | Review - What work did you need done?   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | description       | Review - What work did you need done?   |
      | characterCount    |  |
      | formFieldInput    | This is an automated test!   |
      | serviceProviderId |  |
      | pathName          |  |
      | userType          | Not Authenticated |


  @vrfHowDidItGoWithText1 @vrfSegment
  Scenario: VRF How Did It Go - With Text
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: review--how-did-it-go-input |
      | click           |                                       |
      | send_keys       | This is an automated test! |
      | click           | id: reviews--willHireAgain-button-yes  |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | description    | Review - How did it go?  |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | description       | Review - How did it go?   |
      | characterCount    |  |
      | formFieldInput    | This is an automated test!   |
      | serviceProviderId |  |
      | pathName          |  |
      | userType          | Not Authenticated |


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


  @vrfSubmitExistingUser @reviewRegression @demo1
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


  @vrfMedAccessibility
  Scenario: Vistor Review Form Accessibility Test
    Given a user is on a member site visitor review page
    """
     /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When the page has finished loading
    Then the page should meet "wcag2a" accessibility guidelines


  @vrfMedPageCall @vrfSegment
  Scenario: VRF Med Page Load Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
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
      | serviceProviderId | 10212562                    |
      | title             | Angie's List - Reviews      |
      | url               |                             |
      | userType          | Not Authenticated           |


  @vrfMedOverallGradeA @vrfSegment @letterGrades
  Scenario: VRF Overall Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | id: reviews--rating-Overall--A  |
      | click           |                                 |
    Then a segment track call is sent for a unique field value pair
      | unique_field    | unique_value  |
      | overallGrade    | A |
    And the segment call contains parameters
      | prop_key          | prop_value    |
      | overallGrade      | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfAvailabilityGradeA @vrfSegment @letterGrades
  Scenario: VRF Med Availability Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                        |
      | move_to_element | id: reviews--rating-Availability--A  |
      | click           |                                      |
    Then a segment track call is sent for a unique field value pair
      | unique_field       | unique_value  |
      | availabilityGrade  | A |
    And the segment call contains parameters
      | prop_key           | prop_value    |
      | availabilityGrade  | A |
      | autopopulated      | false |
      | pathName           | |
      | serviceProviderId  | |
      | userType           | Not Authenticated |


  @vrfOfficeGradeA @vrfSegment @letterGrades
  Scenario: VRF Office Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                              |
      | move_to_element | id: reviews--rating-Office Environment--A  |
      | click           |                                            |
    Then a segment track call is sent for a unique field value pair
      | unique_field    | unique_value |
      | office environmentGrade    | A |
    And the segment call contains parameters
      | prop_key          | prop_value   |
      | office environmentGrade      | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfPunctualityGradeA @vrfSegment @letterGrades
  Scenario: VRF Punctuality Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: reviews--rating-Punctuality--A  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field      | unique_value  |
      | punctualityGrade  | A |
    And the segment call contains parameters
      | prop_key          | prop_value    |
      | punctualityGrade  | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfFriendlinessGradeA @vrfSegment @letterGrades
  Scenario: VRF Friendliness Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: reviews--rating-Staff Friendliness--A  |
      | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field        | unique_value  |
      | staff friendlinessGrade    | A |
    And the segment call contains parameters
      | prop_key                 | prop_value  |
      | staff friendlinessGrade  | A |
      | autopopulated     | false |
      | pathName          | |
      | serviceProviderId | |
      | userType          | Not Authenticated |


  @vrfBedsideGradeA @vrfSegment @letterGrades
  Scenario: VRF Bedside Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | id: reviews--rating-Bedside Manner--A   |
      | click           |                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field            | unique_value  |
      | bedside mannerGrade     | A |
    And the segment call contains parameters
      | prop_key              | prop_value  |
      | bedside mannerGrade   | A |
      | autopopulated         | false |
      | pathName              | |
      | serviceProviderId     | |
      | userType              | Not Authenticated |


  @vrfCommunicationGradeA @vrfSegment @letterGrades
  Scenario: VRF Communication Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | id: reviews--rating-Communication--A    |
      | click           |                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field            | unique_value  |
      | communicationGrade     | A |
    And the segment call contains parameters
      | prop_key              | prop_value  |
      | communicationGrade    | A |
      | autopopulated         | false |
      | pathName              | |
      | serviceProviderId     | |
      | userType              | Not Authenticated |


  @vrfEffectivenessGradeA @vrfSegment @letterGrades
  Scenario: VRF Effectiveness Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | id: reviews--rating-Effectiveness of Treatment--A    |
      | click           |                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value  |
      | effectiveness of treatmentGrade     | A |
    And the segment call contains parameters
      | prop_key              | prop_value  |
      | effectiveness of treatmentGrade    | A |
      | autopopulated         | false |
      | pathName              | |
      | serviceProviderId     | |
      | userType              | Not Authenticated |


  @vrfBillingGradeA @vrfSegment @letterGrades
  Scenario: VRF Billing Grade - A
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | id: reviews--rating-Billing and Administration--A    |
      | click           |                                         |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value  |
      | billing and administrationGrade     | A |
    And the segment call contains parameters
      | prop_key              | prop_value  |
      | billing and administrationGrade     | A |
      | autopopulated         | false |
      | pathName              | |
      | serviceProviderId     | |
      | userType              | Not Authenticated |


  @vrfMedWorkDoneYes @vrfSegment
  Scenario: VRF Work Done Click Event - Yes
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
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
      | userResponse      | Yes               |


  @vrfMedWorkDoneNo @vrfSegment
  Scenario: VRF Work Done Click Event - No
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                        |
      | move_to_element | id: reviews--workComplete-button-no |
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
      | userResponse      | No                |


  @vrfMedHireAgainYes @vrfSegment
  Scenario: VRF Hire Again Click Event - Yes
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: reviews--willHireAgain-button-yes |
      | click           |                                       |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | reviewSection  | Hire Again   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | reviewSection     | Hire Again   |
      | serviceProviderId |  |
      | userResponse      | Yes |
      | userType          | Not Authenticated |


  @vrfMedHireAgainNo @vrfSegment
  Scenario: VRF Hire Again Click Event - No
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: reviews--willHireAgain-button-no |
      | click           |                                       |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | reviewSection  | Hire Again   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | reviewSection     | Hire Again   |
      | serviceProviderId |  |
      | userResponse      | No |
      | userType          | Not Authenticated |


  @vrfMedHowDidItGo @vrfSegment
  Scenario: VRF How Did It Go
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: review--description-of-work-input |
      | click           |                                       |
      | send_keys       | This is an automated test! |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | description    | Review - What work did you need done?   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | description       | Review - What work did you need done?   |
      | serviceProviderId |  |
      | pathName          |  |
      | userType          | Not Authenticated |


  @vrfMedWhatWork @vrfSegment
  Scenario: VRF How Did It Go - With Text
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: review--description-of-work-input |
      | click           |                                       |
      | send_keys       | This is an automated test! |
      | click           | id: review--how-did-it-go-input  |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | description    | Review - What work did you need done?   |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | description       | Review - What work did you need done?   |
      | characterCount    |  |
      | formFieldInput    | This is an automated test!   |
      | serviceProviderId |  |
      | pathName          |  |
      | userType          | Not Authenticated |


  @vrfMedHowDidItGoWithText1 @vrfSegment
  Scenario: VRF How Did It Go - With Text
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
      | action_method   | action_params                         |
      | move_to_element | id: review--how-did-it-go-input |
      | click           |                                       |
      | send_keys       | This is an automated test! |
      | click           | id: reviews--willHireAgain-button-yes  |
    Then a segment track call is sent for a unique field value pair
      | unique_field   | unique_value  |
      | description    | Review - How did it go?  |
    And the segment call contains parameters
      | prop_key          | prop_value        |
      | description       | Review - How did it go?   |
      | characterCount    |  |
      | formFieldInput    | This is an automated test!   |
      | serviceProviderId |  |
      | pathName          |  |
      | userType          | Not Authenticated |


  @vrfMedCostOfServiceClick @vrfSegment
  Scenario: VRF Cost Of Service Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
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
      | serviceProviderId |    |
      | userType          | Not Authenticated |

  @vrfMedCalendar @vrfSegment
  Scenario: VRF Calendar Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
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


  @vrfMedCategory @vrfSegment
  Scenario: VRF Category Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
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


  @vrfMedAttachment @vrfSegment
  Scenario: VRF Attachment Click Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
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




  @vrfMedSubmitExistingUser @reviewRegression
  Scenario: Submit review via VRF - existing user
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10212562&at_preview_token=1OH6D8QWmHSyTdCaRZ4jBXWEFq%2Br1NJA9GWwjZnLpb4%3D&at_preview_index=1_1&at_preview_listed_activities_only=true&at_preview_evaluate_as_true_audience_ids=1100025
    """
    When a user performs actions
     | action_method   | action_params                    |
     | move_to_element | id: reviews--rating-Overall--A   |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Availability--A     |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Office Environment--A   |
     | click           |                                  |
     | move_to_element | id: reviews--rating-Punctuality--A    |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Staff Friendliness--A       |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Bedside Manner--A   |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Communication--A     |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Effectiveness of Treatment--A |
     | click           |                                          |
     | move_to_element | id: reviews--rating-Billing and Administration--A |
     | click           |  |
     | move_to_element | id: reviews--workComplete-button-no  |
     | click     |    |
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
