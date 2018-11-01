from common.SeleniumTestCase import SeleniumTestCase
from common.SegmentTestHelper import SegmentTestHelper


##### Visitor Review Form ####
class VrfSegmentEvents(SeleniumTestCase):


## test segment call on clicking Choose File on VRF

    # test segment call on clicking Choose File field on VRF
    def test_testChooseFile(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--add-media-button', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review Form : Choose File Clicked',
            'segment_params': [
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





## Item Clicked Segment Event - Approximate Cost of Service ##

    # test segment call on clicking the Approximate Cost of Service field on VRF
    def test_testItemAppoxCostOfService(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#review--cost-of-service-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review - Approximate cost of service',
            'segment_params': [
                ('description', 'Review - Approximate cost of service'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





## Item Clicked Segment Event - Approximate Date of Service ##

    # test segment call on clicking the Approximate Date of Service field on VRF
    def test_testItemClickWorkDone(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#calendar-input-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Approximate date of service (or last contact)',
            'segment_params': [
                ('description', 'Approximate date of service (or last contact)'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





## test segment call on clicking no on Would you hire again? on VRF

    # test segment call on clicking the Would you hire again? field on VRF
    def test_testItemClickHireAgainNo(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--willHireAgain-button-no', 'click', False)

        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Hire Again',
            'segment_params': [
                ('userResponse', 'No'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





## test segment call on clicking yes on Would you hire again? on VRF

    # test segment call on clicking the Would you hire again? field on VRF
    def test_testItemClickHireAgainYes(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--willHireAgain-button-yes', 'click', False)

        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Hire Again',
            'segment_params': [
                ('userResponse', 'Yes'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)







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






## Item Clicked Segment Event - What work did you need done? ##

    # test segment call on clicking the What work did you need done? field on VRF
    def test_testItemClickWorkDone(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#review--description-of-work-input', 'click', False)

        segcall_info = {
            'main_field': 'description',
            'main_value': 'Review - What work did you need done?',
            'segment_params': [
                ('description', 'Review - What work did you need done?'),
                ('userType', 'Not Authenticated')
                
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





## Work Performed Yes Segment Event ##

    # test segment call on clicking No Was money paid or were services performed? on VRF
    def test_testWorkCompleteSegmentNo(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--workComplete-button-no', 'click', False)
        
        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Work Done',
            'segment_params': [
                ('reviewSection', 'Work Done'),
                ('userType', 'Not Authenticated'),
                ('userResponse', 'No'),
                
            ]
        }

       

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)





## Work Performed Yes Segment Event ##

    # test segment call on clicking Yes Was money paid or were services performed? on VRF
    def test_testWorkCompleteSegmentYes(self):
        if not self.client:
            return 0



        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--workComplete-button-yes', 'click', False)
        
        segcall_info = {
            'main_field': 'reviewSection',
            'main_value': 'Work Done',
            'segment_params': [
                ('reviewSection', 'Work Done'),
                ('userType', 'Not Authenticated'),
                ('userResponse', 'Yes'),
                
            ]
        }

       

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


## Review Form - Grade Selected Segment Event

    # test segment call on clicking Ratings on visitor review form
    def test_testGradeSelected(self):
        if not self.client:
            return 0


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Overall--A', 'click', False)

        segcall_info = {
            'main_field': 'overallGrade',
            'main_value': 'A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Overall--B', 'click', False)

        segcall_info = {
            'main_field': 'overallGrade',
            'main_value': 'B',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Overall--C', 'click', False)

        segcall_info = {
            'main_field': 'overallGrade',
            'main_value': 'C',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Overall--D', 'click', False)

        segcall_info = {
            'main_field': 'overallGrade',
            'main_value': 'D',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Overall--F', 'click', False)

        segcall_info = {
            'main_field': 'overallGrade',
            'main_value': 'F',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Price--A', 'click', False)

        segcall_info = {
            'main_field': 'priceGrade',
            'main_value': 'A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Price--B', 'click', False)

        segcall_info = {
            'main_field': 'priceGrade',
            'main_value': 'B',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Price--C', 'click', False)

        segcall_info = {
            'main_field': 'priceGrade',
            'main_value': 'C',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Price--D', 'click', False)

        segcall_info = {
            'main_field': 'priceGrade',
            'main_value': 'D',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Price--F', 'click', False)

        segcall_info = {
            'main_field': 'priceGrade',
            'main_value': 'F',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Price--N\/A', 'click', False)

        segcall_info = {
            'main_field': 'priceGrade',
            'main_value': 'N/A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Quality--A', 'click', False)

        segcall_info = {
            'main_field': 'qualityGrade',
            'main_value': 'A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Quality--B', 'click', False)

        segcall_info = {
            'main_field': 'qualityGrade',
            'main_value': 'B',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Quality--C', 'click', False)

        segcall_info = {
            'main_field': 'qualityGrade',
            'main_value': 'C',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Quality--D', 'click', False)

        segcall_info = {
            'main_field': 'qualityGrade',
            'main_value': 'D',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Quality--F', 'click', False)

        segcall_info = {
            'main_field': 'qualityGrade',
            'main_value': 'F',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Quality--N\/A', 'click', False)

        segcall_info = {
            'main_field': 'qualityGrade',
            'main_value': 'N/A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--A', 'click', False)

        segcall_info = {
            'main_field': 'responsivenessGrade',
            'main_value': 'A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--B', 'click', False)

        segcall_info = {
            'main_field': 'responsivenessGrade',
            'main_value': 'B',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--C', 'click', False)

        segcall_info = {
            'main_field': 'responsivenessGrade',
            'main_value': 'C',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--D', 'click', False)

        segcall_info = {
            'main_field': 'responsivenessGrade',
            'main_value': 'D',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--F', 'click', False)

        segcall_info = {
            'main_field': 'responsivenessGrade',
            'main_value': 'F',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--N\/A', 'click', False)

        segcall_info = {
            'main_field': 'responsivenessGrade',
            'main_value': 'N/A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--A', 'click', False)

        segcall_info = {
            'main_field': 'punctualityGrade',
            'main_value': 'A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--B', 'click', False)

        segcall_info = {
            'main_field': 'punctualityGrade',
            'main_value': 'B',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--C', 'click', False)

        segcall_info = {
            'main_field': 'punctualityGrade',
            'main_value': 'C',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--D', 'click', False)

        segcall_info = {
            'main_field': 'punctualityGrade',
            'main_value': 'D',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--F', 'click', False)

        segcall_info = {
            'main_field': 'punctualityGrade',
            'main_value': 'F',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--N\/A', 'click', False)

        segcall_info = {
            'main_field': 'punctualityGrade',
            'main_value': 'N/A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--A', 'click', False)

        segcall_info = {
            'main_field': 'professionalismGrade',
            'main_value': 'A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--B', 'click', False)

        segcall_info = {
            'main_field': 'professionalismGrade',
            'main_value': 'B',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--C', 'click', False)

        segcall_info = {
            'main_field': 'professionalismGrade',
            'main_value': 'C',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--D', 'click', False)

        segcall_info = {
            'main_field': 'professionalismGrade',
            'main_value': 'D',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--F', 'click', False)

        segcall_info = {
            'main_field': 'professionalismGrade',
            'main_value': 'F',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--N\/A', 'click', False)

        segcall_info = {
            'main_field': 'professionalismGrade',
            'main_value': 'N/A',
            'segment_params': [
                ('userType', 'Not Authenticated'),
                ('autopopulated', 'false'),
                ('serviceProviderId', '10803144'),

    
            ]
        }

        SegmentTestHelper.do_segment_assertions(self, collect_seg_calls, segcall_info)