Feature: Member Deals for the Auth and UnAuth experience


  @memberHomeDealsLoad
  Scenario: Member Home - Deals have loaded
    Given user is logged into the member site
    When deals have loaded on the member homepage
    When the user is able to click on an offer
    Then the deal detail page loads
    Then the landing URL contains ".angieslist.com/app/offer/search/"
    Then the landing URL contains "?placementType=Web_MemberHomePage_Deals"

  @memberDealSearchUnauth
  Scenario: Member Unauth - Deals Have Loaded
    Given a user is on a member site unauthenticated deals search page
    When a user enters their postal code to see offers
    Then the landing URL contains ".angieslist.com/deals/search"