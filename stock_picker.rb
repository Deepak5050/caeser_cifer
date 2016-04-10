def stock_picker(stocks)
	buy_at, sell_at, profit = 0,0,0
	buy_index = 0
	while buy_index < stocks.size do
		sell_index = buy_index + 1
		while sell_index < stocks.size do
			if stocks[sell_index]-stocks[buy_index] > profit
				buy_at, sell_at = buy_index, sell_index
				profit = stocks[sell_index] - stocks[buy_index]
			end
			sell_index += 1
		end
		buy_index += 1
	end
	"Buy stock at #{[buy_at, sell_at]}. Your profit will be $#{profit}"
end

p stock_picker([300,4,8,2, 4, 5, 19, 20, 284, 1])
#=> "Buy stock at [3, 8]. Your profit will be $282"