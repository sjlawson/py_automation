import re, json, time

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.action_chains import ActionChains


class SegmentTestHelper():

    ##
    # @param test_case - passed as 'self' from the calling test case method
    # @param path - relative page path, must have leading /
    # @param target - css selector for target element
    # @param action - must match with ActionChains events found here:
    #               -- http://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.common.action_chains
    # @optionalParam wait_for_pageload - defaults to True. Set to False if not needed
    def gather_segment_requests_for_url(test_case, path, target='page', action_name='click', wait_for_pageload=True, prep_actions=None):
        wait = WebDriverWait(test_case.client, 15)
        collect_seg = []
        tries = 0
        # sometimes network problems prevent a valid test, so try a couple times just in case
        while tries < 3:
            try:
                test_case.client.get(test_case.visitor_site_url + path)
                if target != 'page':
                    target_element = wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR, target)))
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

                    action_chain = ActionChains(test_case.client).move_to_element(target_element)
                    try:
                        action_method = getattr(action_chain, action_name)
                    except AttributeError:
                        raise NotImplementedError("Class ActionChains does not implement %s" % action_name)
                    old_page = test_case.client.find_element_by_tag_name('html')
                    action_method().perform()

                    # not relevant if action is page
                    if wait_for_pageload:
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
                        test_case.assertEqual(seg_call[seg_check[0]], seg_check[1])
                        print("Segment call detected. %s | %s" % (seg_check[0], seg_call[seg_check[0]]))
                    else:
                        test_case.assertTrue(seg_check[0] in seg_call)
                        print("Segment property %s exists" % seg_check[0])

        try:
            test_case.assertTrue(main_field_exists)
        except AssertionError as e:
            e.args += (('Segment call "%s: %s" is MISSING' % (segcall_info['main_field'], segcall_info['main_value'])),)
            raise
