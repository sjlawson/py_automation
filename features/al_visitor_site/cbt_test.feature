Feature:

  @testPageLoadExample
  Scenario: basic cbt homepage test
    Given user is on a visitor site page
    """
    /
    """
    When the page loads
    Then the company logo is in the header
