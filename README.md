
# Automated Testing for Visitor Site(s) with Python 3 and Selenium

## Preliminary
- make sure you have python >= 3.6 and pip,
- and can create virtual environment containers either with virtualenv or pythonx.x -m venv container_name
- _may_ have to install the Selenium chromedriver and geckodriver: 
  - `brew install chromedriver`
  - `brew install geckodriver`

## For First Time installation:
- Must use Bash or zsh (or some variant of sh -- fish doesn't seem to be compatible)
- Requires Python >= 3.6. 
  - check with: `python --version` -- that may return Python 2.7.x
  - also try: `python3 --version` -- hopefully this is 3.6.x
- If you must install python 3.6, on Mac, the easiest way is with brew:  
`brew install python3`

Then after:  
`python3 --version`  
_Python 3.6.4_

Then install the virtual environment module:  
`brew install pyenv-virtualenv`

---
## From THIS POINT on you should be in the testing application directory: `al_py_automation`

Create the virtual env:  
`python3 -m venv py36`  
your python environment directory name is up to you, 
I use py36 for Python 3.6

Next, activate the virtual env make sure your PWD is:  
`[where-you-put-it]/al_py_automation/`
type: `source py36/bin/activate`

install python package requirements with pip:  
`pip install -r requirements.txt`

## Environment configuration file: `.env`
- modify the .env file to point to the environment you want to test and select which browser to use
- e.g.: setting TEST_BROWSER to 1 would select Firefox
- currently, only Chrome and Firefox are supported, and only Chrome can currently test for console errors
- Your .env file may have configurations specific to your own use if it does, you may want to try this git trick:
  - Edit your .env file with your preferred config so that it's the only file with changes in the repo
  - stash your configs with: `git stash save myenvconfigs`
  - apply, but keep your stash with: `git stash apply`
  - cause git to temporarily ignore your env with: `git update-index --assume-unchanged .env`

### Minimum required content of .env ->
~~VISITOR_SITE_URL=http://angiesmr2stg.prod.acquia-sites.com~~ <- this moved to the YML file (below)
`BROWSER_CLIENTS=Chrome,Firefox,Safari,CBT`  
`TEST_BROWSER=0`  

## Config: applications.yml
Holds configuration information for application test suites
Currently, this is limited to the name of the suite (which _must_ be the directory name that holds the tests) and the application base_url. 

That's all the setup requirements  
After py36 environment has been setup, all you need to do after that is:  
`source ./activate`  
(while inside the al_py_automation directory)

## Making new tests
If you are adding a test for a new application (e.g. The visitor site)
1. Create a new directory in al_py_automation (e.g. al_py_automation/al_visitor_site)
1. Create a new directory in your appsuite folder called 'tests'
1. You might need a 'resources' directory in your app suite to store config files or test input data
1. Create a test (must start with 'test_): for example:
    - Here is a sample test, 
    ```python
    #common selenium library
    from common.SeleniumTestCase import SeleniumTestCase 
    #if you have segment tests, import the helper library:
    from common.SegmentTestHelper import SegmentTestHelper

    # Cap camel case the classname:
    class HomepageSegmentTestCase(SeleniumTestCase):
      
      # test names must begin with `test_`
      def test_homePageSegmentJoin(self):
        if not self.client:
          return 0
        
        # this is an example of a test to load the base page '/' click the join link
        # in the header, gather segment call data and assert that it has the 
        # expected data in the segment call
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/', '#header-join', 'click')
        # Expected content of the segment call
        segcall_info = {
            # main_field and main_value are how the test selects this one call out of 
            # all the other segments calls on the page
            'main_field': 'activityLocation',
            'main_value': 'Visitor : Home',
            'segment_params': [
                ('description', 'Join link in header'),
            ]
        }

        # IMPORTANT - it's not a test without an assertion. This helper method 
        # asserts that the gathered segment call data matches the expected call info
        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)
    ```


## Run the test!
- if you activated the virtual environment with `source ./activate`, you don't need to type "python"
- if you activated with `source py36/bin/activate` you must preface commands with ./ for the cwd

Do the following, replacing `appname` with your application suite test directory

this will run the tests in al_visitor_site/tests/test_h1TitleCanonical.py ->  
`manage.py runtest al_visitor_site h1TitleCanonical`

^^^ tells python to run `manage.py` which has all the testing commands. runtest tells it you want to run one test, al_visitor_site is the application test suite we want to run here, and h1TitleCanonical is the name portion of the test you want. This command runs all tests in the test_h1TitleCanonical.py file. 

#### To use handy test suite menus:
`manage.py suites appname`

#### OPTIONAL: run and direct stdout to text file
`python manage.py runtest app_name someTest > test_output.txt`

check page-by-page results in test_output.txt

## Dev options
open interactive python shell with .env os.environ values:

`python manage.py shell`