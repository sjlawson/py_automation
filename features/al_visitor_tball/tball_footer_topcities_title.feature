Feature:

  Scenario Outline: Thunderball Footer Top City SEO Title Check
      Given user is on a visitor site tball page
      """
      /nearme/
      """
      When the page loads
      # Then the link title of New York is Search New York Pros
      Then the title of link with id "<link_id>" is "<linktitle>"
    Examples:
      | link_id                     | linktitle            |
      | footer--top-cities-new-york | Search New York Pros |

       ## this step will:
       # 1. take the link name to find the element
       # 2. assert that the title of the element = linktitle passed to the step 
