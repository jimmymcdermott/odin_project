def stock_picker(stocks)
  best_days = [0, 1]
  highest_profit_stocks = [stocks[0], stocks[1]]
  current_stocks = [0, 1]

  stocks.each_with_index do |selected_stock, i|
    if selected_stock < stocks[current_stocks[0]]
      current_stocks[0] = i
      current_stocks[1] = 1
    elsif selected_stock > stocks[current_stocks[1]]
      current_stocks[1] = i
    end

    current_profit = stocks[current_stocks[1]] - stocks[current_stocks[0]]
    highest_profit = stocks[best_days[1]] - stocks[best_days[0]]

    if highest_profit < current_profit
      best_days[0] = current_stocks[0]
      best_days[1] = current_stocks[1]
      puts "New Highest profit #{best_days}"
    end
  end

  puts "Finished: #{best_days}"
end

puts "Enter Stocks: "
#stocks = [17,3,6,9,15,8,6,1,10]
stocks = [gets.to_i]
stock_picker(stocks)
