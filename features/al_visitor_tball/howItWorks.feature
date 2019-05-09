Feature:

  @howItWorksPageCall @howItWorkskRegression
  Scenario: Segment pagecall when the GeoTask install-keypad-lock page loads
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Visitor : How It Works |
    Then the segment call contains parameters
      | prop_key                    | prop_value                                     |
      | name                        | Visitor : How It Works                         |
      | path                        | /how-it-works.htm                              |
      | referrer                    |                                                |
      | search                      |                                                |
      | title                       | How Does Angie's List Work &vert; Angie's List |
      | url                         |                                                |



##### Header Tests #####

  @howItWorksHeaderJoinClick @howItWorkskRegression
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params                    |
     | move_to_element | id: header--join-for-free-button |
     | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Join link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                |
      | description      | Join link in header       |
      | activityLocation | Visitor : How it Works    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"


  @geoTaskChicagoKeypadHeaderBusinessOwnersClick @howItWorkskRegression
  Scenario: Clicking the Business Owners button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | css: #header--business-owners-link     |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                 |
      | description  | Business Owners link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                   |
      | description      | Business Owners link in header  |
      | activityLocation | Visitor : How it Works       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"


  @geoTaskFurnaceRepairHeaderSignInClick @howItWorkskRegression
  Scenario: Clicking the Sign In button in the header
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
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
      | activityLocation | Visitor : How it Works       |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @apps
  Scenario: User hovers then clicks on Appliance Repair in the header on the Visitor How It Works page
    Given user is on a visitor site tball page
    """
    /how-it-works.htm
    """
    When a user performs actions
      | action_method   | action_params       |
      | move_to_element | css: #header--dynamic--interior-link |
      | click           | css: #header--dynamic--interior-link-ApplianceRepair |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value           |
      | activityLocation | Visitor : How it Works |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : How it Works                   |
      | description            | Interior menu category link in header |
    #And we wait "1" seconds for the next page to load
    #And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"