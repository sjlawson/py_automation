from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class TestHowDidItGo(SeleniumTestCase):


## Item Clicked Segment Event - How Did It Go? ##

    # test segment call on clicking the How Did It Go? field on VRF
    def test_testHowDidItgo(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#review--how-did-it-go-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review - How did it go?',
            'segment_params': [
                ('description', 'Review - How did it go?'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

   
   
    # test field input segment call for the How Did it Go? field on VRF
    def test_howDidItGoFieldInput(self):
        if not self.client:
            return 0
        
        
        prep_actions = [
            {
                'action_element': '#review--how-did-it-go-input',
                'action_list': [
                    ('click',),
                    ('send_keys','I am testing field input'),
                ]
            },
            {
                'action_element': '#reviews--rating-Overall--A',
                'action_list': [
                    ('click',)
                ]
            }
        ]
        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144','#review--how-did-it-go-input', 'click', False, prep_actions)
        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review - How did it go?',
            'segment_params': [
               ('userType', 'Not Authenticated'),
               ('formFieldInput', 'I am testing field input'),
               ('characterCount', '24')
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


