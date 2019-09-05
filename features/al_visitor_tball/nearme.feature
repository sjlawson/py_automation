@nearMe
Feature:

  @nearMeFurnaceRepairWithZipPageCall
  Scenario: Segment pagecall when the NearMe furnace-repair page loads
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value      |
      | name         | Visitor : Near Me |
    Then the segment call contains parameters
      | prop_key                        | prop_value                                        |
      | name                            | Visitor : Near Me                                 |
      | path                            | /nearme/furnace-repair/                           |
      | pathName                        | /nearme/furnace-repair/                           |
      | postalCodesList                 | 90210                                             |
      | referrer                        |                                                   |
      | results                         |                                                   |
      | search                          |                                                   |
      | srCtaDisplayed                  |                                                   |
      | title                           | Top 10 Furnace Repair Near Me &vert; Angie's List |
      | totalResults                    |                                                   |
      | url                             |                                                   |
      | visitorPage4_0Category          | HEATING AND AIR CONDITIONING                      |
      | visitorPage4_0CategorySecondary |                                                   |
      | visitorPageCategory             | HEATING & A/C                                     |
      | visitorPageCategorySecondary    |                                                   |


##### Header Tests #####

  @nearMeFurnaceRepairHeaderJoinClick @nearMePageHeader @nearMeHeader
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
     | action_method   | action_params                    |
     | move_to_element | id: header--join-for-free-button |
     | click           |                                  |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Join link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value           |
      | description      | Join link in header  |
      | activityLocation | Visitor : Near Me    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @nearMeFurnaceRepairHeaderSignInClick @nearMePageHeader @nearMeHeader
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
      | activityLocation | Visitor : Near Me            |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @nearMedHeaderBusinessOwnersClick @nearMePageHeader @nearMeHeader
  Scenario: Clicking the Business Owners button in the header
    Given user is on a visitor site tball page
    """
    /companylist/t/indianapolis/install-keypad-lock.htm
    """
    When a user performs actions
     | action_method   | action_params                          |
     | move_to_element | css: #header--business-owners-link     |
     | click           |                                        |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Business Owners link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                      |
      | description      | Business Owners link in header  |
      | activityLocation | Visitor App : Geo Task          |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @nearMeInteriorApplianceRepairClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on Appliance Repair - Interior in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--interior-link                 |
      | click           | css: #header--dynamic--interior-link-ApplianceRepair |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Near Me                     |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @nearMeInteriorHeatingCoolingClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on Heating Cooling - Interior in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #header--dynamic--interior-link                |
      | click           | css: #header--dynamic--interior-link-HeatingCooling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Near Me                     |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @nearMeInteriorViewAllClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - Interior in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--interior-link             |
      | click           | css: #header--dynamic--interior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor : Near Me                                |
      | description            | Interior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeExteriorMasonryClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on Masonry - Exterior in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--exterior-link         |
      | click           | css: #header--dynamic--exterior-link-Masonry |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       | Visitor : Near Me                     |
      | description            | Exterior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @nearMeExteriorViewAllClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - Exterior in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--exterior-link             |
      | click           | css: #header--dynamic--exterior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       | Visitor : Near Me                                |
      | description            | Exterior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLawnIrrigationClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on Lawn Irrigation - Lawn in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #header--dynamic--lawn-link                |
      | click           | css: #header--dynamic--lawn-link-LawnIrrigation |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                                 |
      | activityLocation       | Visitor : Near Me                          |
      | description            | Lawn & Garden menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @nearMeLawnViewAllClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - Lawn in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--lawn-link             |
      | click           | css: #header--dynamic--lawn-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       | Visitor : Near Me                                     |
      | description            | Lawn & Garden menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeMoreJunkClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on Junk Hauling - More in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--more-link             |
      | click           | css: #header--dynamic--more-link-JunkHauling |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       | Visitor : Near Me                 |
      | description            | More menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @nearMeMoreNearMeClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on Near Me - More in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-nearMe-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       | Visitor : Near Me              |
      | description            | Near Me link in desktop header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @nearMeMoreViewAllClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - More in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--more-link             |
      | click           | css: #header--dynamic--more-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                                   |
      | activityLocation       | Visitor : Near Me                            |
      | description            | More menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"


  @nearMeArticlesOutdoorLivingClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on Outdoor Living - More in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #header--dynamic--articles-link               |
      | click           | css: #header--dynamic--articles-link-OutdoorLiving |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                                    |
      | activityLocation       | Visitor : Near Me                             |
      | description            | Articles & Advice menu article link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @nearMeArticlesViewAllClick @nearMePageHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - More in the header on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--articles-link                 |
      | click           | css: #header--dynamic--articles-viewAllArticles-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       | Visitor : Near Me                                       |
      | description            | Articles & Advice menu view all articles link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"





##### Body Tests #####


  @nearMePageFurnaceChangePostal @nearMePageBody @nearMeBody
  Scenario: User clicks on change postal code in the body on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #change-postal-code-link  |
      | click           | css: #change-postal-code-link  |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #postalCode     |
      | click           | css: #postalCode     |
      | send_keys       | 49726                |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value          |
      | activityLocation       | Visitor : Near Me   |
      | description            | Change Zip Code     |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #update-postal-code-button     |
      | click           | css: #update-postal-code-button     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value          |
      | activityLocation       | Visitor : Near Me   |
      | description            | Update Zip Code     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/furnace-repair/?postalCode=49726"

  @nearMePageFurnaceSRClick @nearMePageBody @nearMeBody
  Scenario: User clicks on find pros cta in the body on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #sr-near-me-btn         |
      | click           | css: #sr-near-me-btn         |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key               | prop_value                          |
      | activityLocation       | Visitor : Near Me                   |
      | description            | Service Request Flow entry button   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Heating-Cooling.10211.html?entry_point_id=33795230&postalCode=90210"

  @nearMePageFurnaceChangePostalAndSubmitSR @nearMePageBody @nearMeBody
  Scenario: User clicks on change postal code in the body on the Visitor Near Me Furnace Repair Page and then submits SR.
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #change-postal-code-link  |
      | click           | css: #change-postal-code-link  |
    Then we wait "1" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params        |
      | move_to_element | css: #postalCode     |
      | click           | css: #postalCode     |
      | send_keys       | 49726                |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key                         | prop_value          |
      | activityLocation                 | Visitor : Near Me   |
      | categoryId                       |                     |
      | categoryIdSecondary              |                     |
      | description                      | Change Zip Code     |
      | pathName                         |                     |
      | postalCodesList                  |                     |
      | visitorPage4_0Category           |                     |
      | visitorPage4_0CategorySecondary  |                     |
    Then we wait "2" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | css: #update-postal-code-button     |
      | click           | css: #update-postal-code-button     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key                         | prop_value          |
      | activityLocation                 | Visitor : Near Me   |
      | description                      | Update Zip Code     |
    Then we wait "2" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/furnace-repair/?postalCode=49726"
    Then we wait "2" seconds for the next page to load
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #sr-near-me-btn         |
      | click           | css: #sr-near-me-btn         |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/category.Heating-Cooling.10211.html?entry_point_id=33795230&postalCode=49726"

  @nearMePageFurnaceRaqClick @nearMePageBody @nearMeBody
  Scenario: User clicks on RAQ cta in the body on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                |
      | move_to_element | css: #sp-raq-button          |
      | click           | css: #sp-raq-button          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key                        | prop_value                     |
      | activityLocation                | Visitor : Near Me              |
      | categoryId                      | 78                             |
      | categoryIdSecondary             |                                |
      | displayedGrade                  |                                |
      | displayedReviewCount            |                                |
      | hasAd                           |                                |
      | hasCertification                |                                |
      | hasOffer                        |                                |
      | isSSA                           |                                |
      | pathName                        | /nearme/furnace-repair/        |
      | postalCodesList                 | 90210                          |
      | rank                            | 1                              |
      | serviceproviderid               |                                |
      | visitorPage4_0Category          | HEATING AND AIR CONDITIONING   |
      | visitorPage4_0CategorySecondary |                                |
      | visitorPageCategory             | HEATING & A/C                  |
      | visitorPageCategorySecondary    |                                |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/lead/request_a_quote/"
    And the landing URL contains "/project?placementType=Web_NearMe"

  @nearMePageFurnaceDealClick @nearMePageBody @nearMeBody
  Scenario: User clicks on a Deal in the body on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | css: #deal-card-812 > div          |
      | click           | css: #deal-card-812 > div          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key                         | prop_value                    |
      | activityLocation                 | Visitor : Near Me             |
      | categoryId                       | 78                            |
      | categoryIdSecondary              |                               |
      | description                      |                               |
      | gradeDisplayed                   |                               |
      | keywordSearched                  | /nearme/furnace-repair/       |
      | offerId                          |                               |
      | pathName                         | /nearme/furnace-repair/       |
      | postalCode                       | 90210                         |
      | priceDisplayed                   |                               |
      | rank                             | 1                             |
      | serviceProviderId                |                               |
      | visitorPage4_0Category           | HEATING AND AIR CONDITIONING  |
      | visitorPage4_0CategorySecondary  |                               |
      | visitorPageCategory              | HEATING & A/C                 |
      | visitorPageCategorySecondary     |                               |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/offer/search/"
    And the landing URL contains "placementType=Web_NearMe"

  @nearMePageFurnaceAllDealClick @nearMePageBody @nearMeBody
  Scenario: User clicks on a Deal in the body on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                                                                       |
      | move_to_element | css: #app > div > div.container-fluid > div:nth-child(3) > div > div > div.deal-footer > a          |
      | click           | css: #app > div > div.container-fluid > div:nth-child(3) > div > div > div.deal-footer > a          |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/deals/search"

  @nearMePageFurnaceSimilarNearMeClick @nearMePageBody @nearMeBody
  Scenario: User clicks on a Similar Near Me in the body on the Visitor Near Me Furnace Repair Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #similar-nearme-link-24\ Hour\ Furnace\ Repair  |
      | click           | css: #similar-nearme-link-24\ Hour\ Furnace\ Repair  |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value      |
      | activityLocation | Visitor : Near Me |
    And the segment call contains parameters
      | prop_key                         | prop_value                   |
      | activityLocation                 | Visitor : Near Me            |
      | categoryId                       |                              |
      | categoryIdSecondary              |                              |
      | description                      | Similar Near Me link         |
      | pathName                         | /nearme/furnace-repair/      |
      | postalCodesList                  | 90210                        |
      | similarNearMePageSelected        | 24 Hour Furnace Repair       |
      | visitorPage4_0Category           | HEATING AND AIR CONDITIONING |
      | visitorPage4_0CategorySecondary  |                              |
      | visitorPageCategory              | HEATING & A/C                |
      | visitorPageCategorySecondary     |                              |
     And we wait "1" seconds for the next page to load
     And the landing URL contains ".angieslist.com/nearme/24-hour-furnace-repair/?postalCode=90210"

  @nearMePageMajorMarketClick @nearMePageBody @nearMeBody
  Scenario: Clicking major market link on Near Me pages
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
     | action_method   | action_params                |
     | move_to_element | id: major-market-link-Albany |
     | click           |                              |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value         |
      | description  | Major Market Clicked |
    And the segment call contains parameters
      | prop_key         | prop_value              |
      | description      | Major Market Clicked    |
      | activityLocation | Visitor : Near Me       |
      | cityClicked      | Albany                  |
      | keywordSearched  | /nearme/furnace-repair/ |
      | pathName         | /nearme/furnace-repair/ |




##### Footer Tests #####


  @nearMePageFooterJoin @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Join For Free in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #footer--join-for-free-link                |
      | click           | css: #footer--join-for-free-link                |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                 |
      | description      | Join For Free link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       |                              |
      | description            | Join For Free link in footer |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @nearMePageFooterCompanyList @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Find Local... in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #footer--find-local-business-link          |
      | click           | css: #footer--find-local-business-link          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                         |
      | description      | Find Local Businesses link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                           |
      | activityLocation       |                                      |
      | description            | Find Local Businesses link in footer |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMePageFooterNearMe @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Near Me in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #footer--services-near-me-link          |
      | click           | css: #footer--services-near-me-link          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                    |
      | description      | Services Near Me link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       |                                 |
      | description            | Services Near Me link in footer |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @nearMePageFooterHowItWorks @nearMePageFooter @nearMeFooter
  Scenario: User clicks on How It Works in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                            |
      | move_to_element | css: #footer--how-it-works-link          |
      | click           | css: #footer--how-it-works-link          |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                |
      | description      | How It Works link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                      |
      | activityLocation       |                                 |
      | description            | How It Works link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/how-it-works.htm"

  @nearMePageFooterSolution @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Solution Center in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                            |
      | move_to_element | css: #footer--solution-center-link       |
      | click           | css: #footer--solution-center-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                   |
      | description      | Solution Center link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       |                                    |
      | description            | Solution Center link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"

  @nearMePageFooterPhotos @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Photos in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                            |
      | move_to_element | css: #footer--photo-galleries-link       |
      | click           | css: #footer--photo-galleries-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                   |
      | description      | Photo Galleries link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                         |
      | activityLocation       |                                    |
      | description            | Photo Galleries link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/photos/"

  @nearMePageFooterVideos @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Videos in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | css: #footer--videos-link       |
      | click           | css: #footer--videos-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value          |
      | description      | Videos link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       |                           |
      | description            | Videos link in footer     |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/videos/"

  @nearMePageFooterAnswers @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Answers in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--answers-link       |
      | click           | css: #footer--answers-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | description      | Answers link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       |                           |
      | description            | Answers link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "answers.angieslist.com"

  @nearMePageFooterBo @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Business Owners in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #footer--for-business-owners-link       |
      | click           | css: #footer--for-business-owners-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                       |
      | description      | For Business Owners link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       |                                       |
      | description            | For Business Owners link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com"

  @nearMePageFooterPress @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Press in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #footer--press-link       |
      | click           | css: #footer--press-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | description      | Press link in footer |
    And the segment call contains parameters
      | prop_key               | prop_value              |
      | activityLocation       |                         |
      | description            | Press link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/in-the-press.htm"

  @nearMePageFooterInvest @nearMePageFooter @nearMeFooter
  Scenario: User clicks on investor relations in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                               |
      | move_to_element | css: #footer--investor-relations-link       |
      | click           | css: #footer--investor-relations-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                       |
      | description      | Investor Relations link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                           |
      | activityLocation       |                                      |
      | description            | Investor Relations link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angihomeservices.com/investor-overview"

  @nearMePageFooterAboutUs @nearMePageFooter @nearMeFooter
  Scenario: User clicks on about us in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--about-us-link      |
      | click           | css: #footer--about-us-link      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                       |
      | description      | About Angie’s List link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                           |
      | activityLocation       |                                      |
      | description            | About Angie’s List link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/aboutus.htm"

  @nearMePageFooterCareers @nearMePageFooter @nearMeFooter
  Scenario: User clicks on careers in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--careers-link       |
      | click           | css: #footer--careers-link       |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value            |
      | description      | Careers link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       |                           |
      | description            | Careers link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".abouthomeadvisor.com/careers/"

  @nearMePageFooterFaq @nearMePageFooter @nearMeFooter
  Scenario: User clicks on FAQ in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params               |
      | move_to_element | css: #footer--faq-link      |
      | click           | css: #footer--faq-link      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value         |
      | description      | FAQs link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value             |
      | activityLocation       |                        |
      | description            | FAQs link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/faq/"

  @nearMePageFooterContactUs @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Contact Us in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                      |
      | move_to_element | css: #footer--contact-us-link      |
      | click           | css: #footer--contact-us-link      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value               |
      | description      | Contact Us link in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       |                              |
      | description            | Contact Us link in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @nearMePageFooterJoinRight @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Join - Right in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #footer--join-button      |
      | click           | css: #footer--join-button      |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value           |
      | description      | Join button in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value               |
      | activityLocation       |                          |
      | description            | Join button in footer    |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @nearMePageFooterIos @nearMePageFooter @nearMeFooter
  Scenario: User clicks on iOS in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                     |
      | move_to_element | css: #footer--app-store-badge     |
      | click           | css: #footer--app-store-badge     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value               |
      | description      | App Store badge in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                   |
      | activityLocation       |                              |
      | description            | App Store badge in footer    |

  @nearMePageFooterAndroid @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Android in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | css: #footer--google-play-badge     |
      | click           | css: #footer--google-play-badge     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                 |
      | description      | Google Play badge in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       |                                |
      | description            | Google Play badge in footer    |

  @nearMePageFooterTweetTweet @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Tweet Tweet in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                  |
      | move_to_element | css: #footer--twitter-icon     |
      | click           | css: #footer--twitter-icon     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value            |
      | description      | Twitter icon in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                |
      | activityLocation       |                           |
      | description            | Twitter icon in footer    |

  @nearMePageFooterBook @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Face O' Books in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                   |
      | move_to_element | css: #footer--facebook-icon     |
      | click           | css: #footer--facebook-icon     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value             |
      | description      | Facebook icon in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                 |
      | activityLocation       |                            |
      | description            | Facebook icon in footer    |

  @nearMePagePinterest @nearMePageFooter @nearMeFooter
  Scenario: User clicks on Pins in the Footer on the Visitor Near Me Page
    Given user is on a visitor site tball page
    """
    /nearme/furnace-repair/?postalCode=90210
    """
    When a user performs actions
      | action_method   | action_params                    |
      | move_to_element | css: #footer--pinterest-icon     |
      | click           | css: #footer--pinterest-icon     |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value              |
      | description      | Pinterest icon in footer  |
    And the segment call contains parameters
      | prop_key               | prop_value                  |
      | activityLocation       |                             |
      | description            | Pinterest icon in footer    |
