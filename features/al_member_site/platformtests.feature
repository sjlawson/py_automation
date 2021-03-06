@platform
Feature:
  
  Scenario: test member login is working as expected
    Given user is on the member login page
    When a user performs actions
    | action_method   | action_params               |
    | move_to_element | #login--login-email         |
    | click           |                             |
    | send_keys       | joshua.king@homeadvisor.com |
    | move_to_element | #login--login-password      |
    | click           |                             |
    | send_keys       | testtest1234                |
    | move_to_element | #login--login-button        |
    | click           |                             |
    Then the member landing page is loaded

  Scenario: test member logout is working as expected
    Given user is logged into the member site
    When a user performs actions
    | action_method   | action_params                                   |
    | move_to_element | .search-panel_welcome-msg                       |
    | click           |                                                 |
    | move_to_element | #header--user-flyout-icon                       |
    | move_to_element | #header--user-flyout--menu-item--account-logout |
    | click           |                                                 |
    Then they are logged out

  Scenario: test new user login is working as expected
    Given user is on the sign up page
    When the user creates a new account
    And the user enters geographic data
    Then the member landing page is loaded
  
  Scenario: test user challenge from messages is working as expected
    Given user is on the sign up page
    When the user creates a new account
    And the user enters geographic data
    And the user sends "11" messages
    Then the user receives a recaptcha challenge

  Scenario: test user challenge from offers is working as expected
    Given user is on the sign up page
    When the user creates a new account
    And the user enters geographic data
    And the user creates "11" offers
    Then the user receives a recaptcha challenge

  Scenario: test user challenge from profile views is working as expected
    Given user is on the sign up page
    When the user creates a new account
    And the user enters geographic data
    And the user views "21" profiles
    Then the user receives a recaptcha challenge