import json, time, html, requests, sys, urllib3

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException, NoSuchElementException
from selenium.webdriver.common.action_chains import ActionChains

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


class SegmentTestHelper():

    def request_mountebank(context, count):
        """
        This method is a 1:1 match to the output from get_browser_segmentlogs()
        mb_host: url for mounteback
        mbi_port: mountebank impostor port
        """
        count += 1
        if count > 10:
            return []
        r = requests.get("http://%s:2525/imposters/%s" % (context.mb_host, context.mbi_port))
        request_content = json.loads(r.content)
        if 'requests' not in request_content:
            time.sleep(1)
            return SegmentTestHelper.request_mountebank(context, count)
        content_bodies = [json.loads(content_requests['body']) for content_requests in request_content['requests']]
        segment_props = [ body['properties'] for body in content_bodies]
        if not segment_props:
            time.sleep(1)
            return SegmentTestHelper.request_mountebank(context, count)
        return segment_props

    def element_is_clickable(browser, selector):
        wait = WebDriverWait(browser, 15)
        try:
            element = SegmentTestHelper.get_webdriver_element(browser, selector, 0)
        except NoSuchElementException:
            print("\n\nElement %s not found\n" % selector)
            return False
        return True


    def collect_segment_requests_on_page(context):
        """A paired-down method for simply gathering segment requests from browser log OR mountebank"""
        wait = WebDriverWait(context.browser, 15)
        wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'div')))
        time.sleep(2)

        if context.noproxy:
            return SegmentTestHelper.get_browser_segmentlogs(context, 0)
        else:
            return SegmentTestHelper.request_mountebank(context, 0)

    def get_browser_segmentlogs(context, count):
        """For use with non-mountebank, non-proxy, non-tunnel tests that require the Chrome browserlog for segment calls"""
        count += 1
        if count > 10:
            return []
        perf_logs = context.browserlog()
        collect_seg = []
        for perflog in perf_logs:
            if 'request' in perflog['message'] and 'postData' in perflog['message'] and 'properties' in perflog['message']:
                perf_msgs = json.loads(perflog['message'])
            # testing which is a more performant search
            # if 'request' in perf_msgs['message']['params'] and 'postData' in perf_msgs['message']['params']['request']\
            #    and perf_msgs['message']['params']['request']['postData'] is not None\
            #    and 'properties' in perf_msgs['message']['params']['request']['postData']:
                props_string = json.loads(perf_msgs['message']['params']['request']['postData'])['properties']
                if props_string is not None:
                    collect_seg.append(props_string)
        if not collect_seg:
            return SegmentTestHelper.get_browser_segmentlogs(context, count)
        return collect_seg

    def assert_segment_call_exists(context):
        # SegmentTestHelper.request_mountebank()
        seg_calls = SegmentTestHelper.collect_segment_requests_on_page(context)
        expected_prop_name = context.table[0]['unique_field']
        expected_prop_value = context.table[0]['unique_value']
        prop_exists = False
        for seg_props in seg_calls:
            if expected_prop_name in seg_props:
                if seg_props[expected_prop_name] == expected_prop_value:
                    context.seg_props = seg_props
                    prop_exists = True

        try:
            assert prop_exists
            context.test_case.test_result = 'pass'
        except:
            # caught to avoid false is not true response
            context.test_case.test_result = 'fail'
            raise AssertionError("%s not in segment properties" % expected_prop_name)

    def assert_segment_call_props(context):
        for row in context.table:
            if row['prop_value'].lower() == 'true' or row['prop_value'].lower() == 'false':
                try:
                    assert bool(context.seg_props[row['prop_key']]) == bool(html.unescape(row['prop_value'].capitalize()))
                except AssertionError:
                    raise AssertionError('%s expected %s, found %s' % (row['prop_key'],
                                                                       row['prop_value'],
                                                                       context.seg_props[row['prop_key']]))
            elif row['prop_value']:
                try:
                    assert context.seg_props[row['prop_key']] == html.unescape(row['prop_value'])
                    context.test_case.test_result = 'pass'
                except AssertionError:
                    context.test_case.test_result = 'fail'
                    raise AssertionError('%s expected %s, found %s' % (row['prop_key'],
                                                                       row['prop_value'],
                                                                       context.seg_props[row['prop_key']]))
            else:
                try:
                    assert row['prop_key'] in context.seg_props
                except AssertionError:
                    raise AssertionError('%s not found in segment properties' % row['prop_key'])

    def get_webdriver_element(client, selector, tries):
        wait = WebDriverWait(client, 5)
        if tries > 2:
            raise NoSuchElementException("Element not found, identified by <%s> at location <%s>" % (selector, client.current_url))

        element = None
        try:
            if selector[:3] == 'id:':
                print("Checking for element: %s" % selector[3:].strip())
                #element = client.find_element_by_id(selector[3:].strip())
                element = wait.until(EC.presence_of_element_located((By.ID, selector[3:].strip())))
            elif selector[0] == '.' or selector[0] == '#':
                #element = client.find_element_by_css_selector(selector)
                element = wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, selector)))
            elif selector[:4] == 'css:':
                #element = client.find_element_by_css_selector(selector[4:].strip())
                element = wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, selector[4:].strip())))
            elif selector[:5] == 'name:':
                #element = client.find_element_by_name(selector[5:].strip())
                element = wait.until(EC.presence_of_element_located((By.NAME, selector[5:].strip())))
            else:
                print('parameter %s did not match a selector pattern' % selector)
                return selector
        except TimeoutException as e:
            if tries < 2:
                time.sleep(1)
                element = SegmentTestHelper.get_webdriver_element(client, selector, tries + 1)
            else:
                raise NoSuchElementException("Element not found, identified by <%s> at location <%s>" % (selector, client.current_url))

            if element:
                print('ELEMENT FOUND: %s' % selector)

        return element

    def do_actions(client, actions, timeout=20):
        """
        Performs a list of actions on the webdriver client
        http://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.action_chains
        actions is a list of dicts: [{'action_method':'method_name','action_params':['param1','param2','param3'...] },]

        In the case where an action param is an element, the string element identifier (best practise is to use ID),
        the param must be mutated to an instance of a webdriver element

        IF an action causes an element to appear on the page that you then want to interact with, you must break up the
        ActionChains into separate blocks of 'a user performs actions'
        """
        wait = WebDriverWait(client, timeout)
        for action in actions:
            wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, 'body > div')))
            # time.sleep(1)
            if action['action_params']:
                for i in range(0, len(action['action_params'])):
                    if action['action_params'][i]:
                        print("Looking for element...")
                        action['action_params'][i] = SegmentTestHelper.get_webdriver_element(client=client, selector=action['action_params'][i], tries=0)

        for action in actions:
            action_chain = ActionChains(client)
            try:
                p_action_method = getattr(action_chain, action['action_method'])
                p_action_method(*action['action_params'])
                action_chain.perform()
            except AttributeError:
                print("\n\nERROR ON METHOD %s\n\n__" % str(action['action_method']))
                raise NotImplementedError("ActionChains does not implement _%s_ with params _%s_" % (action['action_method'], action['action_params']))



    ##
    # @param test_case - passed as 'self' from the calling test case method
    # @param path - relative page path, must have leading /
    # @param target - css selector for target element
    # @param action - must match with ActionChains events found here:
    #               -- http://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.action_chains
    # @optionalParam wait_for_pageload - defaults to True. Set to False if not needed
    def gather_segment_requests_for_url(test_case, path, target='page', action_name='click', wait_for_pageload=True, prep_actions=None, dbl_action=False):
        wait = WebDriverWait(test_case.client, 15)
        collect_seg = []
        tries = 0
        # sometimes network problems prevent a valid test, so try a couple times just in case
        while tries < 3:
            try:
                test_case.client.get(test_case.visitor_site_url + path)
                if target != 'page':
                    if prep_actions:
                        for prep_action in prep_actions:
                            prep_action_element = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, prep_action['action_element'])))
                            prep_action_chain = ActionChains(test_case.client).move_to_element(prep_action_element)
                            for element_action_method in prep_action['action_list']:
                                try:
                                    p_action_method = getattr(prep_action_chain, element_action_method[0])
                                    if len(element_action_method) == 2:
                                        p_action_method(element_action_method[1])
                                    else:
                                        p_action_method()
                                except AttributeError:
                                    raise NotImplementedError("ActionChains does not implement %s" % element_action_method[0])

                            prep_action_chain.perform()

                    target_element = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, target)))
                    action_chain = ActionChains(test_case.client).move_to_element(target_element)
                    try:
                        action_method = getattr(action_chain, action_name)
                    except AttributeError as e:
                        raise NotImplementedError("Class ActionChains does not implement %s" % action_name)

                    old_page = test_case.client.find_element_by_tag_name('html')

                    try:
                        if dbl_action:
                            action_method().click().perform()
                        else:
                            action_method().perform()

                    except Exception as e:
                        print("EXCEPTION")
                        print(e)

                    # not relevant if action is page
                    if wait_for_pageload:
                        time.sleep(2)
                        with test_case.wait_for_new_page_load(old_page, timeout=10):
                            print('New page loaded')
                else:
                    time.sleep(5)
                    # page calls need time to sleep

                perf_logs = test_case.client.get_log('performance')
                for perflog in perf_logs:
                    perf_msgs = json.loads(perflog['message'])
                    if 'request' in perf_msgs['message']['params'] and 'postData' in perf_msgs['message']['params']['request']\
                       and perf_msgs['message']['params']['request']['postData'] is not None and 'properties' in perf_msgs['message']['params']['request']['postData']:
                        props_string = json.loads(perf_msgs['message']['params']['request']['postData'])['properties']
                        if props_string is not None:
                            collect_seg.append(props_string)

                if len(collect_seg):
                    break
                elif tries < 3:
                    tries += 1
                    raise TimeoutException

            except json.decoder.JSONDecodeError:
                tries += 1
                print("JSON Parse problem, trying again...")
            except TimeoutException:
                tries += 1
                print("Selenium timeout exception. Trying again...")

            break

        return collect_seg

    ##
    # @param test_case - SeleniumTestCase
    # @param collect_seg_calls - segment calls collected from target page
    # @param segcall_info - dictionary - MUST have:
    ## main_field - string, name of field index to grab the correct segment call
    ## main_value - value of main field
    ## segment_params - LIST of TUPLES, (name, value) - value will be checked agaist a matching segment parameter name on the page
    def do_segment_assertions(test_case, collect_seg_calls, segcall_info):
        main_field_exists = False
        for seg_call in collect_seg_calls:
            if segcall_info['main_field'] in seg_call and seg_call[segcall_info['main_field']] == segcall_info['main_value']:
                main_field_exists = True
                print('Segment call %s exists on page' % segcall_info['main_field'])
                for seg_check in segcall_info['segment_params']:
                    if len(seg_check) > 1:
                        test_case.assertEqual(seg_call[seg_check[0]], seg_check[1], 'expected: %s | actual: %s' % (seg_call[seg_check[0]], seg_check[1]))
                        print("Segment call detected. %s | %s" % (seg_check[0], seg_call[seg_check[0]]))
                    else:
                        test_case.assertTrue(seg_check[0] in seg_call, 'Expected segment property %s is missing' % seg_check[0])
                        print("Segment property %s exists" % seg_check[0])

        try:
            test_case.assertTrue(main_field_exists)
        except AssertionError as e:
            e.args += (('Segment call "%s: %s" is MISSING' % (segcall_info['main_field'], segcall_info['main_value'])),)
            test_case.test_result = 'fail'
            raise
        test_case.test_result = 'pass'

    def getTBallPage(context):
        wait = WebDriverWait(context.browser, 15)
        context.browser.get(context.url)
        wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, '#app > div')))
