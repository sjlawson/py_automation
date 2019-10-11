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


  @memberPricinGuideAccessibility
  Scenario: Member Pricing Guide Accessibility
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task
    Then the page should meet "wcag2a" accessibility guidelines

  @pricingGuideCategorySegment
  Scenario: Member Pricing Guide Category Click Segment Event
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category
    When a segment page call is sent for a unique field value pair
      | unique_field      | unique_value |
      | haCategoryName    | Plumbing |
    Then the segment call contains parameters
      | prop_key            | prop_value   |
      | haCategoryName      | Plumbing     |
      | userId              |              |
      | userPrimaryAdZone   |              |
      | userPrimaryZipCode  |              |
      | userSelectedAdZone  |              |
      | userSelectedZipCode |              |

  @pricingGuideTaskSegment
  Scenario: Member Pricing Guide Task Click Segment Event
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task
    When a segment page call is sent for a unique field value pair
      | unique_field         | unique_value      |
      | haSubCategoryName    | Install a Bathtub |
    Then the segment call contains parameters
      | prop_key            | prop_value            |
      | haCategoryId        |                       |
      | haSubCategoryId     |                       |
      | haSubCategoryName   | Install a Bathtub     |
      | haCategoryName      | Plumbing              |
      | userId              |              |
      | userPrimaryAdZone   |              |
      | userPrimaryZipCode  |              |
      | userSelectedAdZone  |              |
      | userSelectedZipCode |              |

  @pricingGuideLoadedSegment
  Scenario: Member Pricing Guide Loaded Segment Event
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task
    When a segment page call is sent for a unique field value pair
      | unique_field         | unique_value      |
      | haSubCategoryName    | Install a Bathtub |
    Then the segment call contains parameters
      | prop_key            | prop_value            |
      | categoryId          |                       |
      | haCategoryId        |                       |
      | haSubCategoryId     |                       |
      | haSubCategoryName   | Install a Bathtub     |
      | haCategoryName      | Plumbing              |
      | jobHighPrice        |                       |
      | jobLowPrice         |                       |
      | jobTypeName         | Install a Bathtub     |
      | userId              |                       |
      | userPrimaryAdZone   |                       |
      | userPrimaryZipCode  |                       |
      | userSelectedAdZone  |                       |
      | userSelectedZipCode |                       |

  @pricingGuideServiceProviderClickSegment
  Scenario: Member Pricing Guide Service Provider Selected Segment
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task and selects a service provider
    When a segment page call is sent for a unique field value pair
      | unique_field         | unique_value      |
      | activityLocation     | Pricing Guide     |
    Then the segment call contains parameters
      | prop_key            | prop_value         |
      | activityLocation    | Pricing Guide      |
      | categoryId          | 291       |
      | description         | Service Provider Clicked |
      | haCategoryId        | 21        |
      | haCategoryName      | Plumbing  |
      | haSubCategoryId     | 25        |
      | haSubCategoryName   | Install a Bathtub  |
      | href                |           |
      | jobHighPrice        |           |
      | jobLowPrice         |           |
      | rank                |           |
      | serviceProviderId   |           |
      | userId              |                       |
      | userPrimaryAdZone   |                       |
      | userPrimaryZipCode  |                       |
      | userSelectedAdZone  |                       |
      | userSelectedZipCode |                       |
    Then the landing URL contains ".angieslist.com/member/store/"
    Then the landing URL contains "/about?categoryId="

  @pricingGuideRaqSegment
  Scenario: Member Pricing Guide RAQ Selected Segment
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a user selects a valid category and task and selects RAQ
    When a segment page call is sent for a unique field value pair
      | unique_field         | unique_value      |
      | activityLocation     | Pricing Guide     |
    Then the segment call contains parameters
      | prop_key                | prop_value         |
      | activityLocation        | Pricing Guide      |
      | categoryId              | 291                |
      | displayedGrade          |                    |
      | displayedReviewCount    |                    |
      | hasAd                   |                    |
      | isSSA                   |                    |
      | rank                    |                    |
      | serviceProviderId       |                    |
      | userId                  |                    |
      | userPrimaryAdZone       |                    |
      | userPrimaryZipCode      |                    |
      | userSelectedAdZone      |                    |
      | userSelectedZipCode     |                    |


  @pricingGuidePageLoadSegment
  Scenario: Member Pricing Guide Page Load Segment
    Given user is logged into the member site
    When a user navigates to the member pricing guide via the header link
    When a segment page call is sent for a unique field value pair
      | unique_field    | unique_value           |
      | name            | Member - Pricing Guide |
    Then the segment call contains parameters
      | prop_key        | prop_value     |
      | name            | Member - Pricing Guide |
      | path            |           |
      | referrer        |           |
      | search          |           |
      | title           |           |
      | url             |           |
      | userId          |           |
      | userType        |           |
