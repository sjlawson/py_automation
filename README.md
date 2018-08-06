
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
- If you must install python 3.6, on Mac, easiest way is with brew:  
`brew install python3`

Then after:  
`python3 --version`
_Python 3.6.4_

Then install the virtual environment module:  
`brew install ---pyenv-virtualenv`

## From THIS POINT on you should be in the testing application directory: `al_visitor_site`

Create the virtual env:  
`python3 -m venv py36`

Next, activate the virtual env make sure your PWD is:  
`[where-you-put-it]/al_py_automation/al_visitor_site/`
type: `source py36/bin/activate`

install python package requirements with pip:  
`pip install -r requirements.txt`

## Environment configuration file: `.env`
- modify the .env file to point to the environment you want to test and select which browser to use
- e.g.: setting TEST_BROWSER to 1 would select Firefox
- currently only Chrome and Firefox are supported, and only Chrome can currently test for console errors
- Your .env file may have configurations specific to your own use if it does, you may want to try this git trick:
  - Edit your .env file with your preferred config so that it's the only file with changes in the repo
  - stash your configs with: `git stash save myenvconfigs`
  - apply, but keep your stash with: `git stash apply`
  - cause git to temporarily ignore your env with: `git update-index --assume-unchanged .env`

### Minimum required content of .env ->
`VISITOR_SITE_URL=http://angiesmr2stg.prod.acquia-sites.com  
BROWSER_CLIENTS=Chrome,Firefox,Safari,CBT  
TEST_BROWSER=0`

That's all the setup requirements  
After py36 environment has been setup, all you need to do after that is:  
`cd al_visitor_site`
`source ./activate`

## run the test!
- if you activated the virtual environment with manage ./activate, you don't need to type "python"
- if you activated with `source py36/bin/activate` you must preface commands with ./ for the cwd

this will run the tests in tests/test_h1TitleCanonical.py ->  
`manage.py runtest h1TitleCanonical`

^^^ tells python to run manage.py which hass all the testing commands. runtest tells it you want to run one test, 
h1TitleCanonical is the name portion of the test you want.

#### To use handy test suite menus:
`manage.py suites`

#### OPTIONAL: run and direct stdout to text file
`python manage.py runtest someTest > test_output.txt`

check page-by-page results in test_output.txt

## Dev options
open interactive python shell with .env os.environ values:

`python manage.py shell`

