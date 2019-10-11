Feature:

  @memberPricinGuideSelectSP @pricingGuideRegression
  Scenario: Member Pricing Guide Service Provider Selected
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task and selects a service provider
    Then the landing URL contains ".angieslist.com/member/store/"
    Then the landing URL contains "/about?categoryId="


  @memberPricinGuideSelectRAQ @pricingGuideRegression
  Scenario: Member Pricing Guide RAQ Selected
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task and selects RAQ
    Then the landing URL contains ".angieslist.com/app/lead/request_a_quote/"
    Then the landing URL contains "/project?categoryId="
    Then the landing URL contains "&placementType=Web_PricingGuide_Bottom"