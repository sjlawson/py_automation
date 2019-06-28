Feature:

  @accessibilityPathList
  Scenario: Accessibility manual test with path list supplied at runtime
    Given a list of absolute URLs and Accessibility standard
    Then each page at the given URL should meet given accessibility standard

