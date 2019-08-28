

## Review Form - Grade Selected Segment Event

    # test segment call on clicking Ratings on visitor review form
    def test_testGradeSelected(self):
        if not self.client:
            return 0


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Overall--A', 'click', False)

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

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Overall--B', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Overall--C', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Overall--D', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Overall--F', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Price--A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Price--B', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Price--C', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Price--D', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Price--F', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Price--N\/A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Quality--A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Quality--B', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Quality--C', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Quality--D', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Quality--F', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Quality--N\/A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--B', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--C', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--D', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--F', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Responsiveness--N\/A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--B', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--C', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--D', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--F', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Punctuality--N\/A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--A', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--B', 'click', False)

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

        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--C', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--D', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--F', 'click', False)

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


        collect_seg_calls = SegmentTestHelper.gather_segment_requests_for_url(self, '/member/reviews/edit?serviceProviderId=10803144', '#reviews--rating-Professionalism--N\/A', 'click', False)

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