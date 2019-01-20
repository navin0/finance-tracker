class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)
    begin
      look_up_stock = StockQuote::Stock.quote(ticker_symbol)
      new(name: look_up_stock.company_name, ticker: look_up_stock.symbol, last_price: look_up_stock.latest_price)
    rescue Exception => e
      return nil
    end
  end

end
