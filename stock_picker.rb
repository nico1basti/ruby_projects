
stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker (prices)
  max_revenue = {
    revenue: 0,
    min_price_index: 0,
    max_price_index: 0
  }
  prices.each.with_index {|price,p_index|
    max_price = prices[p_index+1 ..].max || price 
    profit = max_price - price
    max_price_index = prices.find_index(max_price)

    if profit > max_revenue[:revenue] 
      max_revenue = {
        revenue: profit,
        min_price_index: p_index,
        max_price_index: max_price_index
      }
    end
  }
  [max_revenue[:min_price_index],max_revenue[:max_price_index]]
    
end


p stock_picker(stock_prices)