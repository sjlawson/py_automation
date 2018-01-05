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
def testgroup():
    print("Starting Python Flask Selenium Test Framework")
    print("Visitor site: ", os.environ['VISITOR_SITE_URL'])
    tests = unittest.TestLoader().discover('tests', pattern='test_Redirects.py')
    unittest.TextTestRunner(verbosity=2).run(tests)
    
if __name__ == '__main__':
    manager.run()
