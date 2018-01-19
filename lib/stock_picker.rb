def stock_picker(prices_by_day)
  answer = [0, 0];
  largest_profit = 0;

  prices_by_day.each_with_index do |buy_value, index|
    prices_by_day.drop(index).each_with_index do |sell_value, index2|
      if (sell_value - buy_value > largest_profit) #&& (index < index2)
        largest_profit = sell_value - buy_value
        answer[0] = index
        answer[1] = index2 + index
      end
    end
  end
  answer
end

#stock_picker([17,3,6,9,15,8,6,1,10])
#stock_picker([3,75,3,45,3,12,75,45,1])
stock_picker([4, 8, 3, 2, 1, 13, 10, 9, 6, 14, 9, 1])
#stock_picker([2, 1, 13])
