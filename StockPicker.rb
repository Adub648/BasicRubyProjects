# frozen_string_literal: true

def stock_picker(array)
  # default values
  profit = 0
  bestProfit = 0
  bestProfitBuy = 0
  bestProfitSell = 0

  # iterate through array
  array.each do |price|
    # create new array that doesn't include price being tested
    shiftVal = array.find_index(price)
    r = 0..shiftVal
    newArray = array.reject.with_index { |_v, i| r.include?(i) }
    # check testing price against all other values in array
    newArray.each do |endPrice|
      profit = endPrice - price
      # if found new highest profit, record it's values
      next unless profit > bestProfit

      bestProfit = profit
      bestProfitBuy = array.find_index(price)
      bestProfitSell = array.find_index(endPrice)
    end
  end
  # create and output final array
  outputArray = [bestProfitBuy, bestProfitSell]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

# pseudocode
# function stock_picker(array)
#     array.each do |price|
#         shiftVal = array[price] + 2
#         newArray = array.shift(shiftVal)
#         newArray.each do |endPrice|
#             profit = endPrice - price
#             if profit > bestProfit
#                 bestProfit = profit
#                 bestProfitBuy = array[price] + 1
#                 bestProfitSell = array[endPrice] + 1
#             end
#         end
#     end
#     outputArray = [bestProfitBuy, bestProfitSell]
# end
