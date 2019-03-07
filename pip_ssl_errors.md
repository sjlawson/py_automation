## In case of SSL errors with `pip install...`:

We've noticed certain cases where installing a package may fail with an error like:

	running build_scripts  
	error: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1051)>
	
In this case it is sometimes necessary to include checksums in the install options.

ex:  
	
	pip install chromedriver_installer \
    --install-option="--chromedriver-version=2.24" \
    --install-option="--chromedriver-checksums= d117b66fac514344eaf80691ae9a4687"
    
The value of the checksum in this case can be found at: 
https://chromedriver.storage.googleapis.com/index.html?path=2.24/

pypi.org seems to be a good source for this information  
https://pypi.org/project/chromedriver_installer/
