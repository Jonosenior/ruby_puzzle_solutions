def stock_picker(prices_by_day)
  answer = [0, 0];
  largest_profit = 0;

  prices_by_day.each_with_index do |i, index|
    prices_by_day.each_with_index do |j, index2|
      if (j - i > largest_profit) && (index < index2)
        largest_profit = j - i
        answer[0] = index
        answer[1] = index2
      end
    end
  end
  answer
end

#stock_picker([17,3,6,9,15,8,6,1,10])
#stock_picker([3,75,3,45,3,12,75,45,1])
stock_picker([4, 8, 3, 2, 1, 13, 10, 9, 6, 14, 9, 1])
