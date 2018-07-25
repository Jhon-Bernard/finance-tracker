class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)
    thestock = StockQuote::Stock.quote(ticker_symbol)
    Stock.new(name: thestock.company_name, ticker: thestock.symbol, last_price: thestock.latest_price)
  end

end
