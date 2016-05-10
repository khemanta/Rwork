import PyExchangeRates

# Create an 'Exchange' object, this holds all the information about  the currencies and exchange rates
# Get a free API key from https://openexchangerates.org/signup/free

exchange = PyExchangeRates.Exchange('a4ff2a06bd24d434558900da8682dfdf') 

# Withdraw a few different currencies from the exchange
a = exchange.withdraw(1000, 'USD')
b = exchange.withdraw(1000, 'EUR')

# Money can be added together, the result will be in USD
print a + b
#2352.363797 USD

# Money can be subtracted...
print a - b
#-352.363797 USD

# Multiplied...
print a * b
#1352363.796680 USD

# Scaled up...
print a * 2
#2000.000000 USD

# and divided by a constant
print b / 2
#500.000000 USD


# Money can also be converted to other currencies 
print a.convert('AUD')
#1061.079000 AUD

