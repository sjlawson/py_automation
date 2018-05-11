import sys, urllib
from urllib import request
from tests.SeleniumTestCase import SeleniumTestCase

##
# Check that all templates return 200 or 300 response
# @param SeleniumTestCase
class PageTemplates200Tests(SeleniumTestCase):

    ##
    # Test all URLs in the templates doc. Make sure all are success or redirect.
    def test_templates_loaded(self):
        with open('./resources/template_urls.txt' ,'r') as fp:
            urls = [line for line in fp.readlines()]

        count = 0
        fails = 0
        for prod_url in urls:
            code = 0
            test_url = prod_url.replace('https://www.angieslist.com', self.visitor_site_url)

            try:
                request = urllib.request.urlopen(test_url)
                count += 1
                code = request.getcode()
                print("URL %s tested. code %s from: %s" % (count, code, test_url))
                self.assertTrue( 200 <= code < 400)

            except urllib.error.HTTPError as e:
                fail += 1
                print("FAIL: Recieved http code %s from %s" % (e.code, test_url))
            except urllib.error.URLError:
                fail += 1
                print("FAIL: URL error - %s" % test_url)
            except ConnectionRefusedError as cre:
                fail += 1
                print("FAIL: Connection refused - %s" % test_url)

        print("-------------------\n\n%s URL(s) tested\n-------------------" % count)
