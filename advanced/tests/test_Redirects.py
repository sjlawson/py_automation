import sys
from SeleniumTestCase import SeleniumTestCase

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

class RedirectsTestCase(SeleniumTestCase):
    
    def test_redirects(self):
        test_urls = get_redirect_tuples('sd-2988')

        wait = WebDriverWait(self.client, 2)
        for test_url in test_urls:
            self.client.get(self.visitor_site_url + '/' + test_url[0])
            wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'div')))
            endurl = self.client.current_url
            try:
                self.assertEqual(self.visitor_site_url + test_url[1].strip(), endurl.strip())
            except:
                print(test_url[0] + " expected redirect to: " + test_url[1] + " -- but got: " + endurl)


            
def get_redirect_tuples(idx):
    tups = {}

    tups['sd-2988'] = [
            ('accountants/', '/companylist/accountants.htm'),
            ('acupuncture/', '/companylist/acupuncture.htm'),
            ('addiction-counseling/', '/companylist/counseling-mental-health.htm'),
            ('adult-daycare/', '/companylist/adult-daycare.htm'),
            ('air-duct-cleaning/', '/companylist/air-duct-cleaning.htm'),
            ('alcoholism-treatment-centers/', '/companylist/counseling-mental-health.htm'),
            ('allergy-and-immunology/', '/companylist/allergy-and-immunology.htm'),
            ('alterations/', '/companylist/alterations.htm'),
            ('alternative-medicine/', '/companylist/alternative-health.htm'),
            ('ambulance-services/', '/companylist/ambulance-services.htm'),
            ('anesthesiology/', '/companylist/medical-specialists.htm'),
            ('animal-removal/', '/companylist/animal-removal.htm'),
            ('animal-shelter/', '/companylist/animal-shelter.htm'),
            ('antiques/', '/companylist/antiques.htm'),
            ('apartments/', '/companylist/apartments.htm'),
            ('appliance-refinishing/', '/companylist/appliance-repair.htm'),
            ('appliance-repair/', '/companylist/appliance-repair.htm'),
            ('appliance-sales/', '/companylist/appliance-sales.htm'),
            ('appraisals/', '/companylist/appraisals.htm'),
            ('architects/', '/companylist/architects.htm'),
            ('artwork/', '/companylist/graphic-design.htm'),
            ('asbestos-removal/', '/companylist/asbestos-removal.htm'),
            ('assisted-living/', '/companylist/healthcare-facilities.htm'),
            ('auction-service/', '/companylist/auction-service.htm'),
            ('audiology/', '/companylist/audiology.htm'),
            ('auto-body-repair/', '/companylist/auto-body-repair.htm'),
            ('auto-detailing/', '/companylist/auto-detailing.htm'),
            ('auto-glass/', '/companylist/auto-glass.htm'),
            ('automobile-radiator/', '/companylist/automobile-radiator.htm'),
            ('auto-painting/', '/companylist/auto-painting.htm'),
            ('auto-repair/', '/companylist/auto-repair.htm'),
            ('auto-sales/', '/companylist/auto-sales.htm'),
            ('auto-towing/', '/companylist/auto-towing.htm'),
            ('awnings/', '/companylist/awnings.htm'),
            ('baby-equipment-rental/', '/companylist/baby-equipment-rental.htm'),
            ('banking-credit-unions/', '/companylist/banking-credit-unions.htm'),
            ('bariatric-medicine/', '/companylist/bariatric-medicine.htm'),
            ('basement-waterproofing/', '/companylist/basement-waterproofing.htm'),
            ('basketball-goals/', '/companylist/basketball-goals.htm'),
            ('bathtub-refinishing/', '/companylist/bathtub-refinishing.htm'),
            ('bike-shops/', '/companylist/bike-shops.htm'),
            ('biohazard-remediation/', '/companylist/biohazard-remediation.htm'),
            ('blind-cleaning/', '/companylist/blind-cleaning.htm'),
            ('blood-banks/', '/companylist/blood-work.htm'),
            ('blood-work/', '/companylist/blood-work.htm'),
            ('boat-and-auto-upholstering/', '/companylist/boat-and-auto-upholstering.htm'),
            ('boat-dealers/', '/companylist/boat-dealers.htm'),
            ('breast-surgery/', '/companylist/breast-surgery.htm'),
            ('bridal-shops/', '/companylist/bridal-shops.htm'),
            ('buffing-and-polishing/', '/companylist/buffing-and-polishing.htm'),
            ('buying-services/', '/companylist/errand-service.htm'),
            ('cabinet-makers/', '/companylist/cabinet-makers.htm'),
            ('cabinet-refinishing/', '/companylist/cabinet-refinishing.htm'),
            ('cable-tv-service/', '/companylist/cable-tv-service.htm'),
            ('cake-decorating/', '/companylist/cake-decorating.htm'),
            ('calligraphers/', '/companylist/copy-service.htm'),
            ('camcorder-repair/', '/companylist/camcorder-repair.htm'),
            ('camera-repair/', '/companylist/camera-repair.htm'),
            ('car-accessories/', '/companylist/car-accessories.htm'),
            ('car-alarms/', '/companylist/car-alarms.htm'),
            ('cardiac-surgeons/', '/companylist/cardiac-surgeons.htm'),
            ('cardiologists/', '/companylist/medical-specialists.htm'),
            ('career-coaches/', '/companylist/career-coaches.htm'),
            ('car-inspection/', '/companylist/car-inspection.htm'),
            ('carpet/', '/companylist/carpet.htm'),
            ('carpet-cleaning/', '/companylist/carpet-cleaning.htm'),
            ('car-radio-repair/', '/companylist/car-radio-repair.htm'),
            ('car-rentals/', '/companylist/travel-transportation.htm'),
            ('car-service/', '/companylist/car-service.htm'),
            ('car-tires/', '/companylist/car-tires.htm'),
            ('car-washes/', '/companylist/car-washes.htm'),
            ('catering/', '/companylist/catering.htm'),
            ('ceiling-fans/', '/companylist/ceiling-fans.htm'),
            ('cell-phone-service/', '/companylist/cell-phone-service.htm'),
            ('central-vacuum-cleaners/', '/companylist/central-vacuum-cleaners.htm'),
            ('ceramic-tile/', '/companylist/ceramic-tile.htm'),
            ('chefs/', '/companylist/chefs.htm'),
            ('child-care/', '/companylist/child-care.htm'),
            ('child-daycare/', '/companylist/child-daycare.htm'),
            ('childproofing/', '/companylist/childproofing.htm'),
            ('childrens-hospital/', '/companylist/childrens-hospital.htm'),
            ('chimney-caps/', '/companylist/chimney-caps.htm'),
            ('chimney-repair/', '/companylist/chimney-repair.htm'),
            ('chimney-sweep/', '/companylist/chimney-sweep.htm'),
            ('china-repair/', '/companylist/china-repair.htm'),
            ('chiropractors/', '/companylist/chiropractors.htm'),
            ('cleaning/', '/companylist/cleaning.htm'),
            ('clock-repair/', '/companylist/clock-repair.htm'),
            ('closets/', '/companylist/closets.htm'),
            ('colon-and-rectal-care/', '/companylist/colon-and-rectal-care.htm'),
            ('colonic-irrigation/', '/companylist/colonic-irrigation.htm'),
            ('computer-repair/', '/companylist/computer-repair.htm'),
            ('computer-sales/', '/companylist/computer-sales.htm'),
            ('computer-training/', '/companylist/computer-training.htm'),
            ('concrete-driveways/', '/companylist/concrete-driveways.htm'),
            ('concrete-leveling/', '/companylist/concrete-leveling.htm'),
            ('concrete-repair/', '/companylist/concrete-repair.htm'),
            ('concrete-stamped-decorative/', '/companylist/concrete-stamped-decorative.htm'),
            ('contractor/', '/companylist/contractor.htm'),
            ('cooking-classes/', '/companylist/cooking-classes.htm'),
            ('copy-service/', '/companylist/copy-service.htm'),
            ('cosmetic-dentistry/', '/companylist/cosmetic-dentistry.htm'),
            ('cosmetic-surgery/', '/companylist/cosmetic-surgery.htm'),
            ('costume-rental/', '/companylist/costume-rental.htm'),
            ('counseling-personal/', '/companylist/counseling-personal.htm'),
            ('countertops/', '/companylist/countertops.htm'),
            ('credit-repair-companies/', '/companylist/credit-repair-companies.htm'),
            ('custom-made-furniture/', '/companylist/custom-made-furniture.htm'),
            ('dance-lessons/', '/companylist/dance-lessons.htm'),
            ('deck-maintenance/', '/companylist/deck-maintenance.htm'),
            ('decks-and-porches/', '/companylist/decks-and-porches.htm'),
            ('delivery-services/', '/companylist/delivery-services.htm'),
            ('dentistry-tmj/', '/companylist/dentistry-tmj.htm'),
            ('dentists/', '/companylist/dentists.htm'),
            ('denture-labs/', '/companylist/denture-labs.htm'),
            ('dermatologists/', '/companylist/dermatologists.htm'),
            ('diagnostic-laboratories/', '/companylist/healthcare-facilities.htm'),
            ('diet-nutrition-consultants/', '/companylist/diet-nutrition-consultants.htm'),
            ('dock-building-repair/', '/companylist/dock-building-repair.htm'),
            ('dog-breeder/', '/companylist/dog-breeder.htm'),
            ('dog-training/', '/companylist/dog-training.htm'),
            ('dog-walkers/', '/companylist/dog-walkers.htm'),
            ('doors/', '/companylist/doors.htm'),
            ('doulas/', '/companylist/doulas.htm'),
            ('drain-cleaning/', '/companylist/drain-cleaning.htm'),
            ('drain-pipe-installation/', '/companylist/drain-pipe-installation.htm'),
            ('drapery-cleaning/', '/companylist/drapery-cleaning.htm'),
            ('drivers-education/', '/companylist/drivers-education.htm'),
            ('driveway-gates/', '/companylist/driveway-gates.htm'),
            ('driveways/', '/companylist/driveways.htm'),
            ('drug-abuse-treatment-centers/', '/companylist/drug-abuse-treatment-centers.htm'),
            ('drug-and-alcohol-testing/', '/companylist/drug-and-alcohol-testing.htm'),
            ('dry-cleaning/', '/companylist/dry-cleaning.htm'),
            ('dryer-vent-cleaning/', '/companylist/dryer-vent-cleaning.htm'),
            ('drywall/', '/companylist/drywall.htm'),
            ('dumpster-rental/', '/companylist/dumpster-rental.htm'),
            ('earthquake-retrofit/', '/companylist/earthquake-retrofit.htm'),
            ('education-workshops/', '/companylist/patient-advocates.htm'),
            ('egress/', '/companylist/egress.htm'),
            ('electrical/', '/companylist/electrical.htm'),
            ('electronic-gadget-repair/', '/companylist/electronic-gadget-repair.htm'),
            ('endocrinology-metabolism/', '/companylist/medical-specialists.htm'),
            ('endodontics/', '/companylist/endodontics.htm'),
            ('energy-audit/', '/companylist/energy-audit.htm'),
            ('ent/', '/companylist/ent.htm'),
            ('epoxy-flooring/', '/companylist/epoxy-flooring.htm'),
            ('equipment-rentals/', '/companylist/equipment-rentals.htm'),
            ('errand-service/', '/companylist/errand-service.htm'),
            ('excavating/', '/companylist/excavating.htm'),
            ('exterior-painting/', '/companylist/exterior-painting.htm'),
            ('eye-doctors/', '/companylist/eye-doctors.htm'),
            ('family-counseling/', '/companylist/marriage-relationship-counseling.htm'),
            ('family-planning/', '/companylist/counseling-mental-health.htm'),
            ('fencing/', '/companylist/fencing.htm'),
            ('fertility/', '/companylist/medical-specialists.htm'),
            ('film-processing/', '/companylist/film-processing.htm'),
            ('financial-planners/', '/companylist/financial-planners.htm'),
            ('fireplaces/', '/companylist/fireplaces.htm'),
            ('firewood/', '/companylist/firewood.htm'),
            ('fitness-centers/', '/companylist/fitness-centers.htm'),
            ('fitness-equipment/', '/companylist/fitness-equipment.htm'),
            ('fitness-trainers/', '/companylist/fitness-trainers.htm'),
            ('floor-cleaning/', '/companylist/floor-cleaning.htm'),
            ('flooring/', '/companylist/flooring.htm'),
            ('florists/', '/companylist/florists.htm'),
            ('foundation-repair/', '/companylist/foundation-repair.htm'),
            ('fountains/', '/companylist/fountains.htm'),
            ('funeral-homes/', '/companylist/funeral-homes.htm'),
            ('furniture-refinishing/', '/companylist/furniture-refinishing.htm'),
            ('furniture-sales/', '/companylist/furniture-sales.htm'),
            ('furs/', '/companylist/furs.htm'),
            ('garage-builders/', '/companylist/garage-builders.htm'),
            ('garage-doors/', '/companylist/garage-doors.htm'),
            ('garbage-collection/', '/companylist/garbage-collection.htm'),
            ('gas-grill-repair/', '/companylist/gas-grill-repair.htm'),
            ('gas-leak-repair/', '/companylist/gas-leak-repair.htm'),
            ('gas-logs/', '/companylist/gas-logs.htm'),
            ('gastroenterology/', '/companylist/gastroenterology.htm'),
            ('genealogy/', '/companylist/genealogy.htm'),
            ('general-surgery/', '/companylist/general-surgery.htm'),
            ('generator-installers/', '/companylist/generator-installers.htm'),
            ('genetic-medicine/', '/companylist/genealogy.htm'),
            ('gifts/', '/companylist/gifts.htm'),
            ('glass-and-mirrors/', '/companylist/glass-and-mirrors.htm'),
            ('glass-block/', '/companylist/glass-block.htm'),
            ('graphic-design/', '/companylist/graphic-design.htm'),
            ('grief-counseling/', '/companylist/counseling-mental-health.htm'),
            ('gun-shop/', '/companylist/gun-shop.htm'),
            ('gutter-cleaning/', '/companylist/gutter-cleaning.htm'),
            ('gutter-repair-replacement/', '/companylist/gutter-repair-replacement.htm'),
            ('hair-removal/', '/companylist/hair-removal.htm'),
            ('hair-replacement-and-transplants/', '/companylist/hair-removal.htm'),
            ('hair-salons-barbers/', '/companylist/hair-salons-barbers.htm'),
            ('handicap-equipment/', '/companylist/handicap-equipment.htm'),
            ('handyman-service/', '/companylist/handyman-service.htm'),
            ('hardware-stores/', '/companylist/hardware-stores.htm'),
            ('hardwood-flooring/', '/companylist/hardwood-flooring.htm'),
            ('hauling/', '/companylist/hauling.htm'),
            ('health-insurance-brokers/', '/companylist/health-insurance-brokers.htm'),
            ('health-insurance-providers/', '/companylist/health-insurance-providers.htm'),
            ('hearing-aids/', '/companylist/hearing-aids.htm'),
            ('heart-disease/', '/companylist/medical-specialists.htm'),
            ('heating-oil-companies/', '/companylist/heating-oil-companies.htm'),
            ('hematology/', '/companylist/medical-specialists.htm'),
            ('hepatology/', '/companylist/hepatology.htm'),
            ('holiday-decorating/', '/companylist/holiday-decorating.htm'),
            ('home-and-garage-organization/', '/companylist/home-and-garage-organization.htm'),
            ('home-automation/', '/companylist/home-automation.htm'),
            ('home-builders/', '/companylist/home-builders.htm'),
            ('home-inspection/', '/companylist/home-inspection.htm'),
            ('home-phone-service/', '/companylist/home-phone-service.htm'),
            ('home-security-systems/', '/companylist/home-security-systems.htm'),
            ('home-staging/', '/companylist/home-staging.htm'),
            ('home-theater-systems/', '/companylist/home-theater-systems.htm'),
            ('home-warranty-companies/', '/companylist/home-warranty-companies.htm'),
            ('hospice-facilities/', '/companylist/hospice-facilities.htm'),
            ('hospitalist/', '/companylist/hospitals.htm'),
            ('hospitals/', '/companylist/hospitals.htm'),
            ('house-cleaning/', '/companylist/house-cleaning.htm'),
            ('hurricane-film/', '/companylist/hurricane-film.htm'),
            ('hurricane-shutters/', '/companylist/hurricane-shutters.htm'),
            ('hvac/', '/companylist/hvac.htm'),
            ('hypnotherapy/', '/companylist/hypnotherapy.htm'),
            ('independent-living/', '/companylist/independent-living.htm'),
            ('infectious-diseases/', '/companylist/infectious-diseases.htm'),
            ('in-home-child-care/', '/companylist/in-home-child-care.htm'),
            ('in-home-elder-care-services/', '/companylist/in-home-hospice.htm'),
            ('in-home-hospice/', '/companylist/in-home-hospice.htm'),
            ('insulation/', '/companylist/insulation.htm'),
            ('insurance-agencies/', '/companylist/insurance-agencies.htm'),
            ('intensive-care/', '/companylist/hospitals.htm'),
            ('interior-design/', '/companylist/interior-design.htm'),
            ('interior-painting/', '/companylist/interior-painting.htm'),
            ('internal-medicine/', '/companylist/internal-medicine.htm'),
            ('internet-service/', '/companylist/internet-service.htm'),
            ('invitations/', '/companylist/copy-service.htm'),
            ('ironing/', '/companylist/ironing.htm'),
            ('jewelry-sales-design-repair/', '/companylist/jewelry-sales-design-repair.htm'),
            ('kennels/', '/companylist/kennels.htm'),
            ('kidney-care/', '/companylist/kidney-care.htm'),
            ('kitchen-and-bath-remodeling/', '/companylist/kitchen-and-bath-remodeling.htm'),
            ('lamp-repair/', '/companylist/lamp-repair.htm'),
            ('landscaping/', '/companylist/landscaping.htm'),
            ('landscaping-hardscaping-and-pavers/', '/companylist/landscaping-hardscaping-and-pavers.htm'),
            ('landscaping-lakefront/', '/companylist/landscaping.htm'),
            ('landscaping-lighting/', '/companylist/landscaping-lighting.htm'),
            ('land-surveying/', '/companylist/land-surveying.htm'),
            ('laser-skin-treatment/', '/companylist/laser-skin-treatment.htm'),
            ('lawn-and-yard-work/', '/companylist/lawn-and-yard-work.htm'),
            ('lawn-fertilization-and-treatment/', '/companylist/lawn-fertilization-and-treatment.htm'),
            ('lawn-irrigation/', '/companylist/lawn-irrigation.htm'),
            ('lawn-mower-repair/', '/companylist/lawn-mower-repair.htm'),
            ('lead-testing-and-removal/', '/companylist/lead-testing-and-removal.htm'),
            ('leaf-removal/', '/companylist/leaf-removal.htm'),
            ('leather-and-vinyl-repair/', '/companylist/leather-and-vinyl-repair.htm'),
            ('life-coaching-services/', '/companylist/life-coaching-services.htm'),
            ('lighting/', '/companylist/lighting.htm'),
            ('limousine-service/', '/companylist/limousine-service.htm'),
            ('locksmiths/', '/companylist/locksmiths.htm'),
            ('luggage-repair/', '/companylist/leather-and-vinyl-repair.htm'),
            ('mailbox-repair/', '/companylist/mailbox-repair.htm'),
            ('mailing-service/', '/companylist/delivery-services.htm'),
            ('manicures-nails/', '/companylist/manicures-nails.htm'),
            ('marble-and-granite/', '/companylist/marble-and-granite.htm'),
            ('marinas/', '/companylist/marinas.htm'),
            ('marriage-relationship-counseling/', '/companylist/marriage-relationship-counseling.htm'),
            ('masonry/', '/companylist/masonry.htm'),
            ('massage-therapy/', '/companylist/massage-therapy.htm'),
            ('mattresses/', '/companylist/mattresses.htm'),
            ('medical-alert-systems/', '/companylist/in-home-hospice.htm'),
            ('medical-equipment-and-supplies/', '/companylist/medical-equipment-and-supplies.htm'),
            ('medical-spas/', '/companylist/medical-spas.htm'),
            ('metal-fabrication-and-restoration/', '/companylist/metal-fabrication-and-restoration.htm'),
            ('midwives/', '/companylist/midwives.htm'),
            ('minute-clinic/', '/companylist/healthcare-facilities.htm'),
            ('misting-systems/', '/companylist/landscaping.htm'),
            ('mold-testing-and-remediation/', '/companylist/mold-testing-and-remediation.htm'),
            ('mortgage-companies/', '/companylist/mortgage-companies.htm'),
            ('motorcycle-service/', '/companylist/motorcycle-service.htm'),
            ('moving/', '/companylist/moving.htm'),
            ('muffler-repair/', '/companylist/muffler-repair.htm'),
            ('mulch-and-topsoil/', '/companylist/mulch-and-topsoil.htm'),
            ('musical-instrument-repair/', '/companylist/musical-instrument-repair.htm'),
            ('music-instruction/', '/companylist/music-instruction.htm'),
            ('neurology/', '/companylist/neurology.htm'),
            ('neurosurgery/', '/companylist/neurosurgery.htm'),
            ('non-home-warranty-companies/', '/companylist/home-warranty-companies.htm'),
            ('notary-services/', '/companylist/notary-services.htm'),
            ('nurse-practitioners/', '/companylist/nurse-practitioners.htm'),
            ('nursing-homes/', '/companylist/healthcare-facilities.htm'),
            ('obgyn/', '/companylist/obgyn.htm'),
            ('occupational-therapy/', '/companylist/occupational-therapy.htm'),
            ('office-equipment-repair/', '/companylist/office-equipment-repair.htm'),
            ('oncology/', '/companylist/medical-specialists.htm'),
            ('ophthalmology/', '/companylist/ophthalmology.htm'),
            ('optical-sales-and-repair/', '/companylist/optical-sales-and-repair.htm'),
            ('optometry/', '/companylist/optometry.htm'),
            ('oral-surgeons/', '/companylist/oral-surgeons.htm'),
            ('oriental-rug-cleaning/', '/companylist/oriental-rug-cleaning.htm'),
            ('orthodontists/', '/companylist/orthodontists.htm'),
            ('orthopedics/', '/companylist/orthopedics.htm'),
            ('orthopedics-foot-and-ankle/', '/companylist/orthopedics-foot-and-ankle.htm'),
            ('orthopedics-hand-and-wrist/', '/companylist/orthopedics.htm'),
            ('orthopedics-hips/', '/companylist/orthopedics.htm'),
            ('orthopedics-knee-and-leg/', '/companylist/orthopedics-knee-and-leg.htm'),
            ('orthopedics-shoulder-and-arm/', '/companylist/orthopedics-shoulder-and-arm.htm'),
            ('orthopedics-spine-and-neck/', '/companylist/orthopedics-spine-and-neck.htm'),
            ('osteopathic-medicine/', '/companylist/osteopathic-medicine.htm'),
            ('otolaryngology/', '/companylist/otolaryngology.htm'),
            ('pain-management/', '/companylist/pain-management.htm'),
            ('paper-shredding/', '/companylist/paper-shredding.htm'),
            ('party-planning-party-supplies/', '/companylist/party-planning-party-supplies.htm'),
            ('party-rentals/', '/companylist/party-rentals.htm'),
            ('patient-advocates/', '/companylist/patient-advocates.htm'),
            ('pediatric-dentists/', '/companylist/pediatric-dentists.htm'),
            ('pediatric-neurosurgeon/', '/companylist/pediatrics-neurology.htm'),
            ('pediatrics-allergy-and-immunology/', '/companylist/pediatrics-allergy-and-immunology.htm'),
            ('pediatrics-cardiac-surgery/', '/companylist/pediatrics-cardiology.htm'),
            ('pediatrics-cardiology/', '/companylist/pediatrics-cardiology.htm'),
            ('pediatrics-dermatology/', '/companylist/pediatrics-dermatology.htm'),
            ('pediatrics-ear-nose-throat-care/', '/companylist/otolaryngology.htm'),
            ('pediatrics-endocrinology-and-metabolism/', '/companylist/pediatrics-endocrinology-and-metabolism.htm'),
            ('pediatrics-gastroenterology/', '/companylist/pediatrics-gastroenterology.htm'),
            ('pediatrics-general-surgery/', '/companylist/general-surgery.htm'),
            ('pediatrics-hematology/', '/companylist/pediatrics-cardiology.htm'),
            ('pediatrics-kidney-care/', '/companylist/kidney-care.htm'),
            ('pediatrics-neurology/', '/companylist/pediatrics-neurology.htm'),
            ('pediatrics-oncology/', '/companylist/pediatrics-pulmonology.htm'),
            ('pediatrics-ophthalmology/', '/companylist/pediatrics-ophthalmology.htm'),
            ('pediatrics-optometry/', '/companylist/pediatrics-optometry.htm'),
            ('pediatrics-orthopedics/', '/companylist/pediatrics-orthopedics.htm'),
            ('pediatrics-pulmonology/', '/companylist/pediatrics-pulmonology.htm'),
            ('pediatrics-radiology/', '/companylist/medical-specialists.htm'),
            ('pediatrics-rheumatology/', '/companylist/rheumatology.htm'),
            ('pediatrics-sports-medicine/', '/companylist/sports-medicine.htm'),
            ('pediatrics-thoracic-surgery/', '/companylist/general-surgery.htm'),
            ('pediatrics-urology/', '/companylist/pediatrics-urology.htm'),
            ('periodontist/', '/companylist/periodontist.htm'),
            ('pest-control/', '/companylist/pest-control.htm'),
            ('pet-bakeries/', '/companylist/pet-bakeries.htm'),
            ('pet-care/', '/companylist/pet-care.htm'),
            ('pet-cremation/', '/companylist/pet-cremation.htm'),
            ('pet-grooming/', '/companylist/pet-grooming.htm'),
            ('pet-insurance/', '/companylist/pet-insurance.htm'),
            ('pet-stores/', '/companylist/pet-stores.htm'),
            ('pharmacies/', '/companylist/pharmacies.htm'),
            ('phone-repair/', '/companylist/phone-repair.htm'),
            ('phone-sales/', '/companylist/cell-phone-service.htm'),
            ('phone-wiring/', '/companylist/phone-repair.htm'),
            ('photography/', '/companylist/photography.htm'),
            ('physical-medicine-and-rehabilitation/', '/companylist/physical-medicine-and-rehabilitation.htm'),
            ('physical-therapy/', '/companylist/physical-therapy.htm'),
            ('piano-moving/', '/companylist/piano-moving.htm'),
            ('piano-tuning/', '/companylist/piano-tuning.htm'),
            ('picture-framing/', '/companylist/picture-framing.htm'),
            ('plant-nurseries/', '/companylist/plant-nurseries.htm'),
            ('plaster-plaster-repair/', '/companylist/plaster-plaster-repair.htm'),
            ('playground-equipment/', '/companylist/playground-equipment.htm'),
            ('plumbing/', '/companylist/plumbing.htm'),
            ('podiatry/', '/companylist/podiatry.htm'),
            ('pool-and-spa-service/', '/companylist/pool-and-spa-service.htm'),
            ('pool-table-repair/', '/companylist/pool-table-repair.htm'),
            ('pool-table-sales/', '/companylist/pool-table-sales.htm'),
            ('pooper-scoopers/', '/companylist/pooper-scoopers.htm'),
            ('pressure-washing/', '/companylist/pressure-washing.htm'),
            ('private-investigation/', '/companylist/private-investigation.htm'),
            ('propane-sales-and-service/', '/companylist/propane-sales-and-service.htm'),
            ('property-appraiser/', '/companylist/property-appraiser.htm'),
            ('property-management/', '/companylist/property-management.htm'),
            ('prosthetics-and-orthotics/', '/companylist/prosthetics-and-orthotics.htm'),
            ('prosthodontics-dentures/', '/companylist/prosthodontics-dentures.htm'),
            ('psychiatry/', '/companylist/psychiatry.htm'),
            ('psychology/', '/companylist/psychology.htm'),
            ('pulmonology/', '/companylist/pulmonology.htm'),
            ('radiology/', '/companylist/medical-specialists.htm'),
            ('radon-testing/', '/companylist/radon-testing.htm'),
            ('real-estate-agents/', '/companylist/real-estate-agents.htm'),
            ('reception-halls/', '/companylist/reception-halls.htm'),
            ('reconstructive-surgery/', '/companylist/reconstructive-surgery.htm'),
            ('reflexology/', '/companylist/reflexology.htm'),
            ('remodeling-basements/', '/companylist/remodeling-basements.htm'),
            ('remodeling-modular-and-mobile-home/', '/companylist/remodeling-modular-and-mobile-home.htm'),
            ('resume-services/', '/companylist/resume-services.htm'),
            ('rheumatology/', '/companylist/rheumatology.htm'),
            ('roof-cleaning/', '/companylist/roof-cleaning.htm'),
            ('roof-ice-and-snow-removal/', '/companylist/roof-ice-and-snow-removal.htm'),
            ('roofing/', '/companylist/roofing.htm'),
            ('roto-tilling/', '/companylist/roto-tilling.htm'),
            ('rv-sales-and-service/', '/companylist/rv-sales-and-service.htm'),
            ('satellite-tv-service/', '/companylist/satellite-tv-service.htm'),
            ('screen-repair/', '/companylist/screen-repair.htm'),
            ('secretarial-services/', '/companylist/secretarial-services.htm'),
            ('septic-tank/', '/companylist/septic-tank.htm'),
            ('services.htm', '/companylist/'),
            ('sewer-cleaning/', '/companylist/sewer-cleaning.htm'),
            ('sewing-machine-repair/', '/companylist/sewing-machine-repair.htm'),
            ('sharpening/', '/companylist/sharpening.htm'),
            ('shoe-repair/', '/companylist/shoe-repair.htm'),
            ('siding/', '/companylist/siding.htm'),
            ('signs/', '/companylist/signs.htm'),
            ('skin-care-and-day-spas/', '/companylist/skin-care-and-day-spas.htm'),
            ('skylights/', '/companylist/skylights.htm'),
            ('sleep-medicine/', '/companylist/sleep-medicine.htm'),
            ('small-appliance-repair/', '/companylist/small-appliance-repair.htm'),
            ('snow-removal/', '/companylist/snow-removal.htm'),
            ('solar-panels/', '/companylist/solar-panels.htm'),
            ('special-events/', '/companylist/special-events.htm'),
            ('speech-therapy/', '/companylist/speech-therapy.htm'),
            ('sports-medicine/', '/companylist/sports-medicine.htm'),
            ('stone-and-gravel/', '/companylist/stone-and-gravel.htm'),
            ('storage-facilities/', '/companylist/storage-facilities.htm'),
            ('structural-engineering/', '/companylist/structural-engineering.htm'),
            ('stucco/', '/companylist/stucco.htm'),
            ('sunroom-and-patio-remodeling/', '/companylist/sunroom-and-patio-remodeling.htm'),
            ('tablepads/', '/companylist/tablepads.htm'),
            ('tanning-salons/', '/companylist/tanning-salons.htm'),
            ('tattoos-piercings/', '/companylist/tattoos-piercings.htm'),
            ('taxi-and-shuttle-service/', '/companylist/taxi-and-shuttle-service.htm'),
            ('telemedicine/', '/companylist/healthcare-facilities.htm'),
            ('therapy-respite-camp/', '/companylist/hospice-facilities.htm'),
            ('thoracic-surgery/', '/companylist/thoracic-surgery.htm'),
            ('ticket-broker-service/', '/companylist/ticket-broker-service.htm'),
            ('title-companies/', '/companylist/title-companies.htm'),
            ('toy-repair/', '/companylist/toy-repair.htm'),
            ('traditional-chinese-medicine/', '/companylist/traditional-chinese-medicine.htm'),
            ('transmission-repair/', '/companylist/transmission-repair.htm'),
            ('transplant-surgery/', '/companylist/general-surgery.htm'),
            ('travel-agencies/', '/companylist/travel-agencies.htm'),
            ('travel-medicine/', '/companylist/travel-medicine.htm'),
            ('tree-service/', '/companylist/tree-service.htm'),
            ('trophy-shops/', '/companylist/trophy-shops.htm'),
            ('truck-rentals/', '/companylist/truck-rentals.htm'),
            ('tutoring/', '/companylist/tutoring.htm'),
            ('tuxedo-rental/', '/companylist/tuxedo-rental.htm'),
            ('tv-antenna/', '/companylist/tv-antenna.htm'),
            ('tv-repair/', '/companylist/tv-repair.htm'),
            ('tv-sales/', '/companylist/tv-sales.htm'),
            ('ultrasound-diagnostics/', '/companylist/ultrasound-diagnostics.htm'),
            ('upholstering/', '/companylist/upholstering.htm'),
            ('upholstery-cleaning/', '/companylist/upholstery-cleaning.htm'),
            ('urgent-care-centers/', '/companylist/urgent-care-centers.htm'),
            ('urology/', '/companylist/urology.htm'),
            ('vacuum-cleaners/', '/companylist/vacuum-cleaners.htm'),
            ('van-rentals/', '/companylist/van-rentals.htm'),
            ('vascular-surgery/', '/companylist/vascular-surgery.htm'),
            ('vcr-repair/', '/companylist/vcr-repair.htm'),
            ('vein-treatment/', '/companylist/vein-treatment.htm'),
            ('veterinarians/', '/companylist/veterinarians.htm'),
            ('video-duplication-and-transfer/', '/companylist/video-duplication-and-transfer.htm'),
            ('video-production/', '/companylist/video-production.htm'),
            ('vitamin-and-supplement-stores/', '/companylist/vitamin-and-supplement-stores.htm'),
            ('voice-mail/', '/companylist/cell-phone-service.htm'),
            ('wallpapering/', '/companylist/wallpapering.htm'),
            ('wallpaper-removal/', '/companylist/wallpaper-removal.htm'),
            ('watch-repair/', '/companylist/watch-repair.htm'),
            ('water-and-smoke-damage/', '/companylist/water-and-smoke-damage.htm'),
            ('water-coolers/', '/companylist/water-coolers.htm'),
            ('water-heaters/', '/companylist/water-heaters.htm'),
            ('water-softeners/', '/companylist/water-softeners.htm'),
            ('website-design-and-development/', '/companylist/website-design-and-development.htm'),
            ('wedding-planning/', '/companylist/wedding-planning.htm'),
            ('weight-loss-programs/', '/companylist/weight-loss-programs.htm'),
            ('welding/', '/companylist/welding.htm'),
            ('wells-and-pumps/', '/companylist/wells-and-pumps.htm'),
            ('window-cleaning/', '/companylist/window-cleaning.htm'),
            ('windows/', '/companylist/windows.htm'),
            ('window-tinting/', '/companylist/window-tinting.htm'),
            ('window-treatments/', '/companylist/window-treatments.htm'),
            ('woodworking/', '/companylist/woodworking.htm'),
            ('wrought-iron/', '/companylist/wrought-iron.htm'),
        ]
    
    tups['old'] = [
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
            ('companylist/voice-mail.htm', '/companylist/cell-phone-service.htm'),
        ]

    return tups[idx]
