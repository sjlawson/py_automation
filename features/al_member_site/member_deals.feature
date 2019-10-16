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
  Scenario: Unauth - Deals
    Given a user is on a member site unauthenticated deals search page
    When a user enters their postal code to see offers
    Then we wait "2" seconds for the next page to load
    Then the user selects a deal from the unauth experience
    Then we wait "2" seconds for the next page to load
    Then the landing URL contains ".angieslist.com/member/login?redirect="
    Then the landing URL contains "startRedemption"
    Then the landing URL contains "true"

