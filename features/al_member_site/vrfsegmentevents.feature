Feature:
  @test123
  Scenario: VRF Page Load Event
    Given a user is on a member site visitor review page
    """
    /member/reviews/edit?serviceProviderId=10008066
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Member – Review – Form |
    Then the segment call contains parameters
      | prop_key                    | prop_value                                     |
      | name                        | Member – Review – Form                         |
