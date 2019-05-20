@nearMeP
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