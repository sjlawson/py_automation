import sys
from SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

class RedirectsTestCase(SeleniumTestCase):

    def test_redirects(self):
        test_urls = [
            ('companylist/addiction-counseling.htm', '/companylist/counseling-mental-health.htm'),
            ('companylist/alcoholism-treatment-centers.htm', '/companylist/counseling-mental-health.htm'),
            ('companylist/alternative-medicine.htm', '/companylist/alternative-health.htm '),
            ('companylist/anesthesiology.htm', '/companylist/medical-specialists.htm'),
            ('companylist/appliance-refinishing.htm', '/companylist/appliance-repair.htm'),
            ('companylist/aromatherapy.htm', '/companylist/alternative-health.htm '),
            ('companylist/artwork.htm', '/companylist/graphic-design.htm'),
            ('companylist/assisted-living.htm', '/companylist/healthcare-facilities.htm'),
            ('companylist/blood-banks.htm', '/companylist/blood-work.htm'),
            ('companylist/buying-services.htm', '/companylist/errand-service.htm'),
            ('companylist/calligraphers.htm', '/companylist/copy-service.htm'),
            ('companylist/cardiologists.htm', '/companylist/medical-specialists.htm'),
            ('companylist/car-rentals.htm', '/companylist/travel-transportation.htm'),
            ('companylist/diagnostic-laboratories.htm', '/companylist/healthcare-facilities.htm'),
            ('companylist/education-workshops.htm', '/companylist/patient-advocates.htm'),
            ('companylist/emergency-medicine.htm', '/companylist/hospitals.htm'),
            ('companylist/endocrinology-metabolism.htm', '/companylist/medical-specialists.htm'),
            ('companylist/family-counseling.htm', '/companylist/marriage-relationship-counseling.htm'),
            ('companylist/family-planning.htm', '/companylist/counseling-mental-health.htm'),
            ('companylist/fertility.htm', '/companylist/medical-specialists.htm'),
            ('companylist/genetic-medicine.htm', '/companylist/genealogy.htm'),
            ('companylist/geriatrics.htm', '/companylist/home-health-care.htm'),
            ('companylist/grief-counseling.htm', '/companylist/counseling-mental-health.htm'),
            ('companylist/hair-replacement-and-transplants.htm', '/companylist/hair-removal.htm'),
            ('companylist/heart-disease.htm', '/companylist/medical-specialists.htm'),
            ('companylist/hematology.htm', '/companylist/medical-specialists.htm'),
            ('companylist/hospitalist.htm', '/companylist/hospitals.htm'),
            ('companylist/intensive-care.htm', '/companylist/hospitals.htm'),
            ('companylist/invitations.htm', '/companylist/copy-service.htm'),
            ('companylist/landscaping-lakefront.htm', '/companylist/landscaping.htm'),
            ('companylist/luggage-repair.htm', '/companylist/leather-and-vinyl-repair.htm'),
            ('companylist/mailing-service.htm', '/companylist/delivery-services.htm'),
            ('companylist/medical-alert-systems.htm', '/companylist/in-home-hospice.htm'),
            ('companylist/minute-clinic.htm', '/companylist/healthcare-facilities.htm'),
            ('companylist/misting-systems.htm', '/companylist/landscaping.htm'),
            ('companylist/non-home-warranty-companies.htm', '/companylist/home-warranty-companies.htm'),
            ('companylist/nursing-homes.htm', '/companylist/healthcare-facilities.htm'),
            ('companylist/oncology.htm', '/companylist/medical-specialists.htm'),
            ('companylist/orthopedics-hand-and-wrist.htm', '/companylist/orthopedics.htm'),
            ('companylist/orthopedics-hips.htm', '/companylist/orthopedics.htm'),
            ('companylist/pediatric-neurosurgeon.htm', '/companylist/pediatrics-neurology.htm'),
            ('companylist/pediatrics-cardiac-surgery.htm', '/companylist/pediatrics-cardiology.htm'),
            ('companylist/pediatrics-ear-nose-throat-care.htm', '/companylist/otolaryngology.htm'),
            ('companylist/pediatrics-general-surgery.htm', '/companylist/general-surgery.htm'),
            ('companylist/pediatrics-hematology.htm', '/companylist/pediatrics-cardiology.htm'),
            ('companylist/pediatrics-kidney-care.htm', '/companylist/kidney-care.htm'),
            ('companylist/pediatrics-oncology.htm', '/companylist/pediatrics-pulmonology.htm'),
            ('companylist/pediatrics-radiology.htm', '/companylist/medical-specialists.htm'),
            ('companylist/pediatrics-rheumatology.htm', '/companylist/rheumatology.htm'),
            ('companylist/pediatrics-sports-medicine.htm', '/companylist/sports-medicine.htm'),
            ('companylist/pediatrics-thoracic-surgery.htm', '/companylist/general-surgery.htm'),
            ('companylist/phone-sales.htm', '/companylist/cell-phone-service.htm'),
            ('companylist/phone-wiring.htm', '/companylist/phone-repair.htm'),
            ('companylist/radiology.htm', '/companylist/medical-specialists.htm'),
            ('companylist/telemedicine.htm', '/companylist/healthcare-facilities.htm'),
            ('companylist/therapy-respite-camp.htm', '/companylist/hospice-facilities.htm'),
            ('companylist/transplant-surgery.htm', '/companylist/general-surgery.htm'),
            ('companylist/voice-mail.htm', '/companylist/cell-phone-service.htm')
        ]

        wait = WebDriverWait(self.client, 2)
        for test_url in test_urls:
            self.client.get(self.visitor_site_url + '/' + test_url[0])
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'div')))
            endurl = self.client.current_url
            try:
                self.assertEqual(self.visitor_site_url + test_url[1].strip(), endurl.strip())
            except:
                print(test_url[0] + " expected redirect to: " + test_url[1] + " -- but got: " + endurl)


            
