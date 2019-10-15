Feature: Member Deals for the Auth and UnAuth experience


  @memberHomeDealDetail
  Scenario: Member Home - Deals have loaded
    Given user is logged into the member site
    When deals have loaded on the member homepage
    When the user is able to click on an offer
    Then the deal detail page loads
    Then the landing URL contains ".angieslist.com/app/offer/search/"
    Then the landing URL contains "?placementType=Web_MemberHomePage_Deals"
