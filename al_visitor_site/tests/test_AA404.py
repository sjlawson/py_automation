import sys, urllib
from urllib import request
from tests.SeleniumTestCase import SeleniumTestCase

class AA404(SeleniumTestCase):

    def test_aa404(self):
        bad_pages = [
            '/companylist/us/a/a/a-reviews-331051.htm',
            '/companylist/us/a/a/a-reviews-123456.htm',
            '/companylist/us/a/a/a-reviews-asa123.htm',
            '/companylist/us/a/a/a-reviews-1234.htm',
        ]

        count = 0
        for path in bad_pages:
            count += 1
            url = self.visitor_site_url + path
            try:
                request = urllib.request.urlopen(url)
                code = request.getcode()
                print("\nRecieved http code %s from %s" % (code, url))
                print("\n\n%s URL(s) tested" % count)
                self.assertEqual(code, 404)
            except urllib.error.HTTPError as e:
                self.assertEqual(e.msg, 'Not Found')

        print("\n\n%s URL(s) tested" % count)
