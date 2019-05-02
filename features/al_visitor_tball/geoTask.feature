Feature:

  @geoTaslChicagoKeypadPageCall @geoTaskRegression
  Scenario: Segment pagecall when the GeoTask install-keypad-lock page loads
    Given user is on a visitor site tball page
    """
    /companylist/t/chicago/install-keypad-lock.htm
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Visitor : Geo Task |
    Then the segment call contains parameters
      | prop_key                    | prop_value                                        |
      | drupalGeoTaskId             |                                                   |
      | homeAdvisorCategoryId       |                                                   |
      | name                        | Visitor : Geo Task                                |
      | path                        | /companylist/t/chicago/install-keypad-lock.htm    |
      | primaryParent4_0Category    | LOCKSMITHS                                        |
      | primaryParentCategory       | LOCKSMITHS                                        |
      | primaryParentCategoryId     |                                                   |
      | referrer                    |                                                   |
      | search                      |                                                   |
      | secondaryParent4_0Category  |                                                   |
      | secondaryParentCategory     |                                                   |
      | secondaryParentCategoryId   |                                                   |
      | srCtaDisplayed              |                                                   |
      | title                       | Install Keypad Lock - Chicago &vert; Angie's List |
      | url                         |                                                   |
      | visitorPageGeo              | CHICAGO                                           |
      | visitorPageGeoTask          | CHICAGO - INSTALL KEYPAD LOCK                     |
      | visitorPageTask             | INSTALL KEYPAD LOCK                               |


##### Header Tests #####

  @nearMeFurnaceRepairHeaderJoinClick @nearMeRegression
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | id: header--join-for-free-button |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Join link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value           |
      | description      | Join link in header  |
      | activityLocation | Visitor : Geo Task    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @nearMeFurnaceRepairHeaderHowItWorksClick @nearMeRegression
  Scenario: Clicking the How It Works button in the header
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | id: header--hiw-link         |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                 |
      | description  | How It Works link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                   |
      | description      | How It Works link in header  |
      | activityLocation | Visitor : Geo Task            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"


  @nearMeFurnaceRepairHeaderSignInClick @nearMeRegression
  Scenario: Clicking the Sign In button in the header
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | id: header--sign-in-link     |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                 |
      | description  | Sign In link in header       |
    And the segment call contains parameters
      | prop_key         | prop_value                   |
      | description      | Sign In link in header       |
      | activityLocation | Visitor : Geo Task            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

