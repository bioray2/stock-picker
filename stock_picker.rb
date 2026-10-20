def stock_picker(weeks_prices)
    
    profit = 0
    best_days = [0,0]

    (0...weeks_prices.length).each do |buy_index|
      (buy_index + 1...weeks_prices.length).each do |sell_index|
        if (weeks_prices[sell_index] - weeks_prices[buy_index]) > profit
            profit = weeks_prices[sell_index] - weeks_prices[buy_index]
            best_days[0] = buy_index
            best_days[1] = sell_index
        end
      end
    end
    best_days
end