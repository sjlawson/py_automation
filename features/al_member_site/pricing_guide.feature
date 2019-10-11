Feature:

  @memberPricinGuideSelectSP @pricingGuideRegression
  Scenario: Member Pricing Guide Service Provider Selected
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task
    Then the landing URL contains ".angieslist.com/member/store/"
    Then the landing URL contains "/about?categoryId="