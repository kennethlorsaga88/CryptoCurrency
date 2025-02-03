#!/bin/bash

# <xbar.title>BTC</xbar.title>
# <xbar.image>http://i.imgur.com/V8dABjz.png</xbar.image>
# <xbar.author>Kenneth Lo</xbar.author>
# <xbar.author.github>kennethlosaga88</xbar.author.github> 
#
#!/bin/bash

# Fetch BTC to USDC price from Coinbase API
price=$(curl -s "https://api.coinbase.com/v2/prices/BTC-USDC/spot" | sed -n 's/.*"amount":"\([^"]*\)".*/\1/p')


# Display result in the menu bar
echo "₿ BTC: $price USDC"
echo "---"
echo "Refresh | refresh=true"
echo "Open Coinbase | href=https://www.coinbase.com/"
