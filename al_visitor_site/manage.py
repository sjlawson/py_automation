#!./py36/bin/python
import os, unittest
from xmlrunner import xmlrunner
from flask_script import Manager, Shell, Command
from app import create_app

if os.path.exists('.env'):
    print('Importing environment from .env...')
    for line in open('.env'):
        var = line.strip().split('=')
        listvals = var[1].split(',')
        if len(var) == 2:
            os.environ[var[0]] = var[1]

if 'VISITOR_SITE_URL' not in os.environ:
    os.environ['VISITOR_SITE_URL'] = 'http://angiesmr2stg.prod.acquia-sites.com'

app = create_app('default')
manager = Manager(app)

def make_shell_context():
    """For debugging"""
    return dict(app=app)

manager.add_command("shell", Shell(make_context=make_shell_context))

@manager.command
def testall(*args):
    """Big red button does all the things"""
    args += ('',)
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests')
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

@manager.command
def menu(*args):
    """Shows menu consisting of all individual tests"""
    args += ('',)
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    print("Choose a test to run below: \n")
    tests = unittest.TestLoader().discover('tests')
    test_menu = {}
    count = 0
    for group in tests:
        for suite in group:
            for test in suite:
                count += 1
                print("%s : %s" % (count, str(test).replace('test_', '')))
                test_menu[count] = test
    selected_test = int(input("Enter test number to run (0 exits): "))
    if selected_test in test_menu:
        xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(test_menu[int(selected_test)])


@manager.command
def suites(*args):
    """Display list of test suites and run the selected suite"""
    args += ('',)
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    print("Choose a test to run below: \n")
    test_suite_list = [testname[5:(len(testname) - 3)] for testname in os.listdir('tests')\
                       if testname[:5] == 'test_']
    count = 0
    suite_menu = {}
    suite_test_menu = {}
    for test_suite in test_suite_list:
        count += 1
        print("%s : %s" % (count, test_suite))
        suite_menu[count] = test_suite
    selected_suite = int(input("Enter test suite (0 exits): "))
    tests = unittest.TestLoader().discover('tests', pattern='test_' + suite_menu[selected_suite] + '.py')
    count = 0
    for group in tests:
        for suite in group:
            for test in suite:
                count += 1
                print("%s : %s" % (count, str(test).replace('test_', '')))
                suite_test_menu[count] = test
    selected_test = int(input("Enter test number to run (0 exits, %s to run ALL): " % str(count + 1)))
    if selected_test in suite_test_menu:
        xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(suite_test_menu[int(selected_test)])
    elif selected_test == count + 1:
        xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

@manager.command
def test_h1TitleCanonical(*args):
    """Legacy command - just runs the htTitleCanonical test suite"""
    args += ('',)
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests', pattern='test_h1TitleCanonical.py')
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)


@manager.command
def runtest(*args):
    """runs a test suite - if file name is test_thisIsATest.py, use thisIsATest"""
    if len(args[0]):
        print("Starting Python Flask Selenium Test Framework")
        print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
        print("Running test, %s" % args[0][0])
        test_suite_name = args[0][0].replace('test_', '').replace('.py', '')
        tests = unittest.TestLoader().discover('tests', pattern='test_' + test_suite_name + '.py')
        xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

    else:
        print("No test selected")

if __name__ == '__main__':
    Command.capture_all_args = True
    manager.run()
