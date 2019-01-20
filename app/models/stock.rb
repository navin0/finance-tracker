class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)
    look_up_stock = StockQuote::Stock.quote(ticker_symbol)
    new(name: look_up_stock.company_name, ticker: look_up_stock.symbol, last_price: look_up_stock.latest_price)
  end
  
end
