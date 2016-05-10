


#!/usr/bin/env python

print "The Currency Layer API gives the live pricing on following link"

print "http://www.apilayer.net/api/live?access_key=a4ff2a06bd24d434558900da8682dfdf"

YOUR_ACCESS_KEY = "a4ff2a06bd24d434558900da8682dfdf"

url='http://apilayer.net/api/live?access_key=a4ff2a06bd24d434558900da8682dfdf&currencies=EUR,GBP,CAD,PLN,KRW,SGD,INR&source=USD&format=1'


import json,urllib
data = urllib.urlopen(url).read()
output = json.loads(data)
print (output)