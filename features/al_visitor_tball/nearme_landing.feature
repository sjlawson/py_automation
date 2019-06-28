@nearMe
Feature:

  @nearMeLandingPageCall
  Scenario: Segment pagecall when the NearMe landing page loads
    Given user is on a visitor site tball nearme landing page
    When a segment page call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | name         |  Visitor : Near Me Landing Page |
    Then the segment call contains parameters
      | prop_key              | prop_value                                                                                  |
      | name                  |  Visitor : Near Me Landing Page                                                             |
      | path                  | /nearme/                                                                                    |
      | referrer              |                                                                                             |
      | search                |                                                                                             |
      | srCtaDisplayed        |                                                                                             |
      | title                 | Local Services & Companies Near Me &vert; Free Reviews & Grades Nearby &vert; Angie's List  |
      | url                   |                                                                                             |


##### Header Tests #####

  @nearMeLandingHeaderJoinClick @nearMeLandingHeader @nearMeHeader
  Scenario: Clicking the Join button in the header
    Given user is on a visitor site tball nearme landing page
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
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/app/signup"

  @nearMeLandingHeaderSignInClick @nearMeLandingHeader @nearMeHeader
  Scenario: Clicking the Sign In button in the header
    Given user is on a visitor site tball nearme landing page
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
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/member/login"

  @nearMeLandingHeaderBusinessOwnersClick @nearMeLandingHeader @nearMeHeader
  Scenario: Clicking the Business Owners button in the header
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
     | action_method   | action_params                       |
     | move_to_element | css: #header--business-owners-link  |
     | click           |                                     |
    Then a segment track call is sent for a unique field value pair
      | unique_field | unique_value                    |
      | description  | Business Owners link in header  |
    And the segment call contains parameters
      | prop_key         | prop_value                     |
      | description      | Business Owners link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains "angieslistbusinesscenter.com/"

  @nearMeLandingInteriorApplianceRepairClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on Appliance Repair - Interior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--interior-link                 |
      | click           | css: #header--dynamic--interior-link-ApplianceRepair |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                          |
      | description            | Interior menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/appliance-repair.htm"

  @nearMeLandingInteriorHeatingCoolingClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on Heating Cooling - Interior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                       |
      | move_to_element | css: #header--dynamic--interior-link                |
      | click           | css: #header--dynamic--interior-link-HeatingCooling |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                          |
      | description            | Interior menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       |                                       |
      | description            | Interior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hvac.htm"

  @nearMeLandingInteriorViewAllClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - Interior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--interior-link             |
      | click           | css: #header--dynamic--interior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value      |
      | description            | Interior menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       |                                                  |
      | description            | Interior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLandingExteriorMasonryClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on Masonry - Exterior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--exterior-link         |
      | click           | css: #header--dynamic--exterior-link-Masonry |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                          |
      | description            | Exterior menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                            |
      | activityLocation       |                                       |
      | description            | Exterior menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/masonry.htm"

  @nearMeLandingExteriorViewAllClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - Exterior in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                    |
      | move_to_element | css: #header--dynamic--exterior-link             |
      | click           | css: #header--dynamic--exterior-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                                     |
      | description            | Exterior menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                       |
      | activityLocation       |                                                  |
      | description            | Exterior menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLandingLawnIrrigationClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on Lawn Irrigation - Lawn in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                   |
      | move_to_element | css: #header--dynamic--lawn-link                |
      | click           | css: #header--dynamic--lawn-link-LawnIrrigation |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                               |
      | description            | Lawn & Garden menu category link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                 |
      | activityLocation       |                                            |
      | description            | Lawn & Garden menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/lawn-irrigation.htm"

  @nearMeLandingLawnViewAllClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - Lawn in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--lawn-link             |
      | click           | css: #header--dynamic--lawn-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                                          |
      | description            | Lawn & Garden menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                            |
      | activityLocation       |                                                       |
      | description            | Lawn & Garden menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLandingMoreJunkClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on Junk Hauling - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--more-link             |
      | click           | css: #header--dynamic--more-link-JunkHauling |
    Then a segment track call is sent for a unique field value pair
      | unique_field           | unique_value                       |
      | description            | More menu category link in header  |
    And the segment call contains parameters
      | prop_key               | prop_value                        |
      | activityLocation       |                                   |
      | description            | More menu category link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/hauling.htm"

  @nearMeLandingMoreNearMeClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on Near Me - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                           |
      | move_to_element | css: #header--dynamic--more-link        |
      | click           | css: #header--dynamic--more-nearMe-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                         |
      | description            | Near Me link in desktop header |
    And the segment call contains parameters
      | prop_key               | prop_value                     |
      | activityLocation       |                                |
      | description            | Near Me link in desktop header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/"

  @nearMeLandingMoreViewAllClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                |
      | move_to_element | css: #header--dynamic--more-link             |
      | click           | css: #header--dynamic--more-viewAllCats-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                                       |
      | description            | More menu view all categories link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                   |
      | activityLocation       |                                              |
      | description            | More menu view all categories link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/companylist/"

  @nearMeLandingArticlesOutdoorLivingClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on Outdoor Living - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                      |
      | move_to_element | css: #header--dynamic--articles-link               |
      | click           | css: #header--dynamic--articles-link-OutdoorLiving |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                                        |
      | description            | Articles & Advice menu article link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                      |
      | activityLocation       |                                                 |
      | description            | Articles & Advice menu article link in header   |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/outdoor-living/"

  @nearMeLandingArticlesViewAllClick @nearMeLandingHeader @nearMeHeader
  Scenario: User hovers then clicks on View All - More in the header on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                        |
      | move_to_element | css: #header--dynamic--articles-link                 |
      | click           | css: #header--dynamic--articles-viewAllArticles-link |
    Then a segment track call is sent for a unique field value pair
      | unique_field     | unique_value                                            |
      | description      | Articles & Advice menu view all articles link in header |
    And the segment call contains parameters
      | prop_key               | prop_value                                              |
      | activityLocation       |                                                         |
      | description            | Articles & Advice menu view all articles link in header |
    And we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/articles/"



##### Body Tests #####



  @nearMeLandingBodyCatPests @nearMeLandingBody @nearMeBody
  Scenario: User hovers then clicks on a category in the body on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                                                                                         |
      | move_to_element | css: #app > div > div:nth-child(2) > div.pros-near-me-list.container > div > div:nth-child(1) > div:nth-child(4) > a  |
      | click           | css: #app > div > div:nth-child(2) > div.pros-near-me-list.container > div > div:nth-child(1) > div:nth-child(4) > a  |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/emergency-pest-control/"

  @nearMeLandingBodyCatGolf @nearMeLandingBody @nearMeBody
  Scenario: User hovers then clicks on a category in the body on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                                                                                          |
      | move_to_element | css: #app > div > div:nth-child(2) > div.pros-near-me-list.container > div > div:nth-child(3) > div:nth-child(30) > a  |
      | click           | css: #app > div > div:nth-child(2) > div.pros-near-me-list.container > div > div:nth-child(3) > div:nth-child(30) > a  |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/install-putting-green/"

  @nearMeLandingBodyCatPatio @nearMeLandingBody @nearMeBody
  Scenario: User hovers then clicks on a category in the body on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
    When a user performs actions
      | action_method   | action_params                                                                                                           |
      | move_to_element | css: #app > div > div:nth-child(2) > div.pros-near-me-list.container > div > div:nth-child(2) > div:nth-child(192) > a  |
      | click           | css: #app > div > div:nth-child(2) > div.pros-near-me-list.container > div > div:nth-child(2) > div:nth-child(192) > a  |
    Then we wait "1" seconds for the next page to load
    And the landing URL contains ".angieslist.com/nearme/repair-patio/"



##### Footer Tests #####


  @nearMeLandingFooterJoin @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Join For Free in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterCompanyList @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Find Local... in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterNearMe @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Near Me in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterHowItWorks @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on How It Works in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterSolution @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Solution Center in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterPhotos @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Photos in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterVideos @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Videos in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterAnswers @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Answers in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterBo @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Business Owners in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterPress @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Press in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterInvest @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on investor relations in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterAboutUs @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on about us in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterCareers @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on careers in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterFaq @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on FAQ in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterContactUs @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Contact Us in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterJoinRight @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Join - Right in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterIos @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on iOS in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterAndroid @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Android in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterTweetTweet @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Tweet Tweet in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingFooterBook @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Face O' Books in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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

  @nearMeLandingPinterest @nearMeLandingFooter @nearMeFooter
  Scenario: User clicks on Pins in the Footer on the Visitor Near Me Landing Page
    Given user is on a visitor site tball nearme landing page
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