import os
from dotenv import load_dotenv
import ccxt

load_dotenv()

my_key = os.getenv("KEY")
api_secret = os.getenv("SECRET")


exchange_id = "bybit"
exchange_class = getattr(ccxt, exchange_id)
exchange = exchange_class({
	"apiKey": my_key,
	"secret": api_secret
})

balance = exchange.fetchBalance()
bitty_balance = balance["BTC"]["free"]

ask_price = exchange.fetchTicker('BTC/USD:BTC')["ask"]

print(bitty_balance * 0.05)

symbol = "BTC/USD:BTC"
#making five percent sized buy in bag
size = (bitty_balance * 0.05) * ask_price
#putting the buyorder a bit above the askprice to make sure it gets filled
price = ask_price * 1.01

buy_order = exchange.create_limit_buy_order(symbol, size, price)

take_profit_price = ask_price * 1.02
sell_order = exchange.create_limit_sell_order(symbol, size, take_profit_price)

print(buy_order)
print(sell_order)

