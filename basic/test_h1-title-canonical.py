import unittest, sys, datetime
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

test = unittest.TestCase()
client = webdriver.Chrome()
base_url = 'http://angiesmr2stg.prod.acquia-sites.com'
# base_url = 'https://www.angieslist.com'
test_urls = [ "/",
              "/articles/",
              "/home-improvement/",
              "/auto/",
               "/videos/",
              "/videos/video-dont-let-fear-result-air-duct-cleaning-scam.htm",
              "/videos/video-how-install-led-kitchen-cabinet-lighting.htm",
              "/appliances/",
              "/research/carpet-cleaning/",
              "/basements-and-foundations/",
              "/research/kitchen-cabinets/",
              "/articles/selling-your-home-means-selling-lifestyle.htm",
              "/articles/common-tree-service-scams-avoid.htm",
              "/articles/how-avoid-common-plumbing-scams.htm",
              "/articles/how-find-and-hang-hammock.htm",
              "/articles/5-transmission-problems-you-cant-ignore.htm",
              "/articles/why-hospital-patients-increasingly-face-pricey-surprise.htm",
              "/articles/how-to-properly-hang-artwork.htm",
              "/photos/",
              "/photos/diy-tiny-houses.htm",
              "/image/granite-countertops-and-stainless-steel-appliances-kitchen/",
              "/author-profiles/",
              "/author/angie-hicks.htm",
              "/research/handyman/",
              "/companylist/",
              "/companylist/us/",
              "/companylist/us/in/",
              "/companylist/us/in/fishers/",
              "/companylist/indianapolis/",
              "/companylist/us/in/fishers/tree-service.htm",
              "/companylist/us/in/fishers/service-plus-heating-cooling-plumbing-reviews-140447.htm",
              "/companylist/cleaning.htm",
              "/in-the-press.htm",
              "/press-backlinks/",
              "/press-backlinks/how-handle-bad-contractor.htm",
              "/news-releases/",
              "/news-releases/angie-s-list-rescue-free-consumer-survival-guide-covers-home-auto-property-even-pets/",
              "/news-clips/angie-shares-secrets-her-balancing-act-today.htm",
              "/services.htm",
              "/quick-tour.htm",
              "/how-it-works.htm",
              "/aboutus.htm",
              "/photos/landscaping-ideas.htm",
]
start_time = "START TIME: " + str(datetime.datetime.now())
wait = WebDriverWait(client, 2)
error_count = 0
errors = ""
success_count = 0

for test_url in test_urls:
    client.get(base_url + test_url)
    wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, 'div')))
    
    print("TESTING: " + test_url)
    try:
        h1_list = client.find_elements_by_css_selector('h1')
        test.assertTrue(len(h1_list) == 1)
        success_count += 1
        print("-------- H1 PASSED")
    except:
        error_count += 1
        errors += test_url + " --- H1 FAIL\n";
        print("-------- H1 FAIL: ", sys.exc_info()[0])
        
    try:
        title = client.title
        test.assertTrue(len(title) > 1)
        success_count += 1
        print("-------- TITLE PASSED")
    except:
        error_count += 1
        errors += test_url + " --- TITLE FAIL\n";
        print("-------- TITLE FAIL: ", sys.exc_info()[0])
        
    try:
        canonical = client.find_element_by_css_selector('link[rel="canonical"]')
        test.assertTrue(len(canonical.get_attribute('href')) > 1)
        success_count += 1
        print("-------- CANONICAL PASSED")
    except:
        error_count += 1
        errors += test_url + " --- CANONICAL FAIL\n";
        print("-------- CANONICAL FAIL: ", sys.exc_info()[0])
    print("")
client.close();

print(str(success_count) + " ASSERTIONS PASSED")
print("ASSERTION FAILURES: " + (str(error_count) + " \n" + errors) if len(errors) else 'None!')

print(start_time)
print("END TIME: " + str(datetime.datetime.now()))

test.assertFalse(error_count)
