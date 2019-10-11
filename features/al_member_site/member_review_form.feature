Feature:

  @memberReviewFormAccessibility
  Scenario: Member Review Form Accessibility Test
    Given user is logged into the member site
    When a user navigates to the member review form via the header link
    And the user searches for a service provider on the add a review page
    Then the page should meet "wcag2a" accessibility guidelines