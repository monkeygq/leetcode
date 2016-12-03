def max_profit(prices)
  len = prices.length
  return 0 if prices.length < 2 
  buy_min = prices.first 
  ret = 0 
  (1..(len - 1)).each do |i| 
    ret = prices[i] - buy_min if prices[i] - buy_min > ret 
    buy_min = prices[i] if prices[i] < buy_min
  end 
  ret 
end

