from app import create_app
from flask_script import Manager, Shell
import os, unittest, time

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
def testall():
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests')
    unittest.TextTestRunner(verbosity=2).run(tests)

    
@manager.command
def test_h1TitleCanonical():
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests', pattern='test_h1TitleCanonical.py')
    unittest.TextTestRunner(verbosity=2).run(tests)

    
@manager.command
def test_redirects():
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests', pattern='test_Redirects.py')
    unittest.TextTestRunner(verbosity=2).run(tests)

# @manager.command
# def sandbox():
#     import argparse
#     parser = argparse.ArgumentParser()
#     parser.add_argument("command", nargs='+', help="command missing", type=str)
#     parser.add_argument("test", nargs='+', help="[test identifier]", type=str)
#     args = parser.parse_args()
#     print(args.command)
#     if args.test:
#         print("Test to run %s", args.test_to_run)
    
if __name__ == '__main__':
    manager.run()
