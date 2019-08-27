Feature:

  @vrfPageCall
  Scenario: VRF Page Load Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Member – Review – Form |
    Then the segment call contains parameters
      | prop_key                    | prop_value                                     |
      | name                        | Member – Review – Form                         |
    And we wait "2" seconds for the next page to load

  @vrfSubmitExistingUser
  Scenario: Submit review via VRF - existing user
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1
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
     | send_keys       | 49726 49726 49726                        |
     | move_to_element | id: review--how-did-it-go-input          |
     | click           |                                          |
     | send_keys       | 49726  4972649726                        |
     | move_to_element | id: reviews--submit-button               |
     | click           |                                          |
    Then we wait "1" seconds for the next page to load
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
     | click           |   |
    Then we wait "8" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/member?submissionconfirmation=true"

  @vrfSubmitNewUser
  Scenario: Submit review via VRF - New user
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=1
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
     | send_keys       | 49726 49726 49726                        |
     | move_to_element | id: review--how-did-it-go-input          |
     | click           |                                          |
     | send_keys       | 49726  4972649726                        |
     | move_to_element | id: reviews--submit-button               |
     | click           |                                          |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
     | action_method   | action_params                 |
     | move_to_element | id: sign-up-toggle            |
     | click           |                               |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
     | action_method   | action_params                 |
     | move_to_element | id: signup-form--email        |
     | click           |                               |
     | send_keys       | test   |
     | move_to_element | id: signup-form--first-name     |
     | click           |                               |
     | send_keys       | qwerty1234!                   |
     | move_to_element | id: signup-form--last-name       |
     | click           |   |
     | send_keys       | qwerty1234!                   |
     | move_to_element | id: signup-form--password       |
     | click           |   |
     | send_keys       | qwerty1234!                   |
    Then we wait "8" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/member?submissionconfirmation=true"