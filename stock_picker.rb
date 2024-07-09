
stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker (prices)
  sorted_prices = prices.sort
  max_revenue = {
    revenue: 0,
    min_price_index: 0,
    max_price_index: 0
  }
  sorted_prices.each {|price|
    price_index = prices.find_index(price)
    max_price = prices[price_index+1 ..].max || price 
    max_price_index = prices.find_index(max_price)
    revenue = max_price - price

    if (max_price - price) > max_revenue[:revenue] 
      max_revenue = {
        revenue: revenue,
        min_price_index: price_index,
        max_price_index: max_price_index
      }
    end
  }
  [max_revenue[:min_price_index],max_revenue[:max_price_index]]
    
end


p stock_picker(stock_prices)