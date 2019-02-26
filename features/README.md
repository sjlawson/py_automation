# Behavioural testing

## Creating tests with feature files
Inside the `al_py_automation/features` folder you will find sub-directories, `al_member_site` and `al_visitor_site`

There are some sample segment tests in these folders that duplicate already-coded tests to show the difference. The main advantage to feature files is that they are both functional (the feature *is* the test) and instructive. 

Basic structure of a feature file:
```  
Feature:  
    @tags_are @useful @visitorSegment  
    Scenatio: a test  

    Given user is on a visitor site page  
    """  
    /url/to/page  
    """  
    When a segment page call is sent for a unique field value pair  
      | unique_field | unique_value   |
      | name         | Visitor : Home |
    Then the segment call contains parameters
      | prop_key       | prop_value                                                            |
      | name           | Visitor : Home                                                        |
      | atTestOffer    |                                                                       |
      | cid            |                                                                       |
      | path           | /                                                                     |
      | srCtaDisplayed | true                                                                  |
      | userId         |                                                                       |
      | userType       | Visitor - New                                                         |
      | title          | Angie's List &vert; Join for FREE to see 10 Million Verified Reviews  |
      | srCtaVersion   | v2.1                                                                  |


```

- After the 'Given' in this example, there is a line of text enclose in tripple quotes. That value feeds the actual test step code and directs the browser client to a page
- After the 'When' and 'Then' lines, there is a name/value table structure. This is a pre-built structure that should word for any segment call test
- Note that above, an html encoding had to be used in the title `Angie's List | Join for FREE...` -- this is because the vertical bar is a reserved character in Gherkin. 

### Features with simulated user actions
Actions, or action chains, are commands that mimic the actions of a user on a webpage. They also usually have elements as parameters. 
The following is an example:

```  
When a user performs actions
      | action_method   | action_params                       |
      | move_to_element | id: #ha-lead-zip                    |
      | send_keys       | 27610                               |
      | move_to_element | css: .user-form input.submit_button |
      | click           |                                     |
```
_Things to notice_
- the first row must have the headings, `action_method` and `action_params`
- the content of the action_method column must be a valid Selenium action chain method
  - See: https://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.action_chains
- If the action parameter (action_params) is an element on the page, it's best to include what type of element it is with a colon like this:
  - id: #id-of-element
  - css: div .css-class
  - name: element-with-name-attribute
- If the selector starts with # or '.', you can omit the type
- Best practice is either name or id. Long CSS selectors should be last resort


### The main idea is to create re-usable step implementations so that, most of the time, all that's needed to make a new test is a feature file that conforms to an existing pattern
If a new pattern is needed, a ticket will likely have to be created for Core Quality or an approved maintainer of `al_py_automation` to write the Python code for the new step implementation 

## Running tests from the terminal
- command to run tests is `behave`, but just running `behave` will run ALL tests in ALL environments. 
- you probably want to use tags to run groups of tests in one environment
  + For example, the above test has a tag, `@visitorSegment`. You can then run just this test (and all tests with that tag) with: `behave --tags=@visitorSegment`
  + For cleaner logs, you can append `--no-skipped` to avoid logging skipped tests, for example `behave --tags=@visitorSegment --no-skipped`.
  + To run just one feature file, for example `al_visitor_site/homepage.feature`, the command is: `behave --include al_visitor_site/homepage`

## JUnit report output
Reports are generated for each test and placed in the `al_py_automation/reports` directory

## Other browsers
- currently only Chrome is supported, but this will soon be refactored to make use of mountebank service mocking, which will make tests browser-agnostic

## Existing python tests in the flask menu framework
There is a pass-thru test in both `al_visitor_site` and `al_member_site` called 'legacytests.feature'
- These simple have one step: 'Then run visitor site unittests' or 'Then run member site unittests'
- They load all tests currently coded in `al_py_automation/al_visitor_sites` or the member sites directories, compares them to a list of tests to NOT run, and then executes them. 
- You can also still run any of those tests from the menus, e.g.: `manage.py suites al_visitor_site`


## How it works
In any of the scenarios in the feature files, there are 'steps' that start with keywords, "Given, When, Then, and And". These are plain language statements that correspond to functions in the python files located in the directory, `al_py_automation/features/steps/...`
- these files (for example, segment_steps.py) contain mostly functions named `step_impl(context)`
- each of those step funcitons has an annotation that corresponds with a plain-language step in a feature file. 
- In cases where there is an 'And' step in the feature file, the corresponding step_impl() will be whatever the previous step was
  - For example: 
     ```
	 Then a segment track call is sent for a unique field value pair
	   ...
     And the segment call contains parameters
	   ...
     ```
	 In this case, the 'And' step will be annotated with: `@then('the segment call contains parameters')`
	 This is because that step is an 'And' of a 'Then' step. Savvy?
- Several generic step functions are ready for use in Segment tests, however, if you write a step in a feature file that does not already have a corresponding step_impl() function, you will have to write one, or request one to be written




## Currently implemented steps
- Given user is on a visitor site page
  + requires a text field to pass in the URL.
  + uses base_url value from config/applications.yml `al_visitor_site` entry
- Given user is on a member site page
  + requires a text field to pass in the URL. 
  + uses base_url value from config/applications.yml `al_member_site` entry
- When a segment page call is sent for a unique field value pair
  + requires table input with `unique_field` and `unique_value` header
  + must be one additional line with the field name and expected value
- When a segment track call is sent for a unique field value pair
  + requires table input with `unique_field` and `unique_value` header
  + must be one additional line with the field name and expected value
- When a user performs actions
  + requires table input with header fields, `action_method` and `unique_value` 
  + expects action_method to be a valid method in the ActionChains class in the Selenium library
  + expects action_params to be valid parameters for the repective method
    * Param may be an individual value or comma-separated list
	* Page elements must be a css selector, preferably unique 
- Then the segment call contains parameters
  + requires table input with header `prop_key` and `prop_value`
  + prop_key should be the property names sent to segment
  + prop_value is the *expected* value to test against the actual one sent
  + if value is left empty, it will just test for the existence of the prop_key in the segment request

