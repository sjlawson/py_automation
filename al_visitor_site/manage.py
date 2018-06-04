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
    return dict(app=app)

manager.add_command("shell", Shell(make_context=make_shell_context))

@manager.command
def testall(*args):
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests')
    #unittest.TextTestRunner(verbosity=2).run(tests)
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

@manager.command
def menu(*args):
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
                print("%s : %s" % (count, str(test).replace('test_','')))
                test_menu[count] = test
    selected_test = int(input("Enter test number to run: "))
    if selected_test in test_menu:
        #unittest.TextTestRunner(verbosity=2).run(test_menu[int(selected_test)])
        xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(test_menu[int(selected_test)])


@manager.command
def test_h1TitleCanonical(*args):
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests', pattern='test_h1TitleCanonical.py')
    # unittest.TextTestRunner(verbosity=2).run(tests)
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

@manager.command
def test_redirects(*args):
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests', pattern='test_Redirects.py')
    #unittest.TextTestRunner(verbosity=2).run(tests)
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

@manager.command
def runtest(*args):
    import sys
    if len(args[0]):
        print("Starting Python Flask Selenium Test Framework")
        print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
        print("Running test, %s" % args[0][0])
        test_suite_name = args[0][0].replace('test_','').replace('.py','')
        tests = unittest.TestLoader().discover('tests', pattern='test_' + test_suite_name + '.py')
        # unittest.TextTestRunner(verbosity=2).run(tests)
        xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)

    else:
        print("No test selected")

if __name__ == '__main__':
    Command.capture_all_args = True
    manager.run()
