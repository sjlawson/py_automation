#!./py36/bin/python
import os
import unittest
import yaml
import subprocess
import time
from multiprocessing import Process
from xmlrunner import xmlrunner
from flask_script import Manager, Shell, Command
from common.proxy import *
from app import create_app

if os.path.exists('.env'):
    print('Importing environment from .env...')
    for line in open('.env'):
        var = line.strip().split('=')
        listvals = var[1].split(',')
        if len(var) == 2:
            os.environ[var[0]] = var[1]

with open("config/applications.yml", 'r') as stream:
    applications = yaml.load(stream)

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
    suiteconf = applications['appsuites'][args[0][0]]
    os.environ['BASE_URL'] = suiteconf['base_url']
    print("Starting Python Flask Selenium Test Framework")
    print("Test environment: %s" % args[0][0])
    print("Base URL: ", suiteconf['base_url'])

    tests = unittest.TestLoader().discover('%s/tests' % args[0][0])
    xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)


@manager.command
def get_test_list(*args):
    """generate a canonical list of all tests in an application suite"""
    suiteconf = applications['appsuites'][args[0][0]]
    print("Test environment: %s" % args[0][0])
    tests = unittest.TestLoader().discover('%s/tests' % args[0][0])
    print('[')
    for group in tests:
        for suite in group:
            for test in suite:
                test_row = str(test)
                canonical = test_row[test_row.find("(")+1:test_row.find(")")] + '.' + test_row[:test_row.find("(")].strip()
                print("'%s'," % canonical)

    print("]")

@manager.command
def menu(*args):
    """Shows menu consisting of all individual tests"""
    suiteconf = applications['appsuites'][args[0][0]]
    os.environ['BASE_URL'] = suiteconf['base_url']
    print("Starting Python Flask Selenium Test Framework")
    print("Test environment: %s" % args[0][0])
    print("Base URL: ", suiteconf['base_url'])
    print("Choose a test to run below: \n")

    tests = unittest.TestLoader().discover('%s/tests' % args[0][0])
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
    suiteconf = applications['appsuites'][args[0][0]]
    os.environ['BASE_URL'] = suiteconf['base_url']
    print("Starting Python Flask Selenium Test Framework")
    print("Test environment: %s" % args[0][0])
    print("Base URL: ", suiteconf['base_url'])

    print("Choose a test suite to run below: \n")
    test_suite_list = [testname[5:(len(testname) - 3)] for testname in os.listdir(('%s/tests' % args[0][0]))\
                       if testname[:5] == 'test_']
    count = 0
    suite_menu = {}
    suite_test_menu = {}
    for test_suite in test_suite_list:
        count += 1
        print("%s : %s" % (count, test_suite))
        suite_menu[count] = test_suite
    selected_suite = int(input("Enter test suite (0 exits): "))
    tests = unittest.TestLoader().discover(('%s/tests' % args[0][0]), pattern='test_' + suite_menu[selected_suite] + '.py')
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
def runtest(*args):
    """Runs a single test from a test file"""
    try:
        if len(args[0]) and len(args[0][1]):
            suiteconf = applications['appsuites'][args[0][0]]
            os.environ['BASE_URL'] = suiteconf['base_url']
            print("Starting Python Flask Selenium Test Framework")
            print("Test environment: %s" % args[0][0])
            print("Base URL: ", suiteconf['base_url'])
            suite = args[0][1]
            print("Running test, %s" % suite)
            tests = unittest.TestLoader().loadTestsFromName(args[0][0] + '.tests.' + args[0][1])
            xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)
    except IndexError:
        print("Usage: manage.py runtest <env_name> <test_file_basename>.<test_class>.<test_name>")
        print("Example: manage.py runtest al_visitor_site test_AA404.AA404.test_aa404")


@manager.command
def runtestsuite(*args):
    """runs a test suite - if file name is test_thisIsATest.py, use thisIsATest
    command syntax is: manage.py envname testname
    """
    try:
        if len(args[0]) and len(args[0][1]):
            suiteconf = applications['appsuites'][args[0][0]]
            os.environ['BASE_URL'] = suiteconf['base_url']
            print("Starting Python Flask Selenium Test Framework")
            print("Test environment: %s" % args[0][0])
            print("Base URL: ", suiteconf['base_url'])
            print("Running test, %s" % args[0][1])
            test_suite_name = args[0][1].replace('test_', '').replace('.py', '')
            tests = unittest.TestLoader().discover(('%s/tests' % args[0][0]), pattern='test_' + test_suite_name + '.py')
            xmlrunner.XMLTestRunner(verbosity=2, output='reports').run(tests)
    except IndexError:
        print("Usage: manage.py runtestsuite <env_name> <test_class>")
        print("example: manage.py runtestsuite al_visitor_site AA404")

@manager.command
def geckodriver_install(*args):
    from webdriverdownloader import GeckoDriverDownloader
    gdd = GeckoDriverDownloader()
    gdd.download_and_install()


def proxy_start(proxy_host, proxy_port, mountebank_host, mountebank_port):
    proxy = HTTP(hostname=proxy_host, port=proxy_port, targethost=mountebank_host, targetport=mountebank_port)
    proxy.run()

def start_mb():
    subprocess.call('mb')

def start_sc():
    import platform
    scdir = 'sc_' + platform.system()
    cmd = './%s/bin/sc -u %s -k %s -p 127.0.0.1:4545 -T' %\
        (scdir, os.environ['SAUCE_USERNAME'], os.environ['SAUCE_ACCESS_KEY'])
    # popen = subprocess.Popen(cmd)
    # popen.wait()
    subprocess.call(cmd, shell=True)

def start_cbt():
    subprocess.call('cbt_tunnels --username %s --authkey %s --proxyIp 127.0.0.1 --proxyPort 4545' % (os.environ['CBT_USER'], os.environ['CBT_KEY']), shell=True)

mb = None
pyproxy = None
sc = None
cbt = None

@manager.command
def launch_framework(*args):
    """
    1. launch montebank
    2. start proxy
    3. start sauce connect (sc)
    4. start cbt_tunnels
    5. wait for the end of the world
    """
    global mb
    global pyproxy
    global sc
    global cbt

    proxy_host = 'localhost'
    proxy_port = int(os.environ['PYPROXY_PORT'])
    mb_host = os.environ['MB_HOST']
    mbi_port = os.environ['MBI_PORT']
    mb = Process(target=start_mb)
    mb.start()

    pyproxy = Process(target=proxy_start, args=[proxy_host, proxy_port, mb_host, mbi_port])
    pyproxy.start()

    time.sleep(1)
    sc = Process(target=start_sc)
    sc.start()

    cbt = Process(target=start_cbt)
    cbt.start()

def shutdown(signal, frame):
    if sc is not None:
        sc.terminate()
    if cbt is not None:
        cbt.terminate()
    if mb is not None:
        mb.terminate()
    if pyproxy is not None:
        pyproxy.terminate()

    exit(0)

import signal
signal.signal(signal.SIGINT, shutdown)

if __name__ == '__main__':
    Command.capture_all_args = True
    manager.run()
