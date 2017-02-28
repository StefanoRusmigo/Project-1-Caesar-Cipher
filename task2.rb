def stock_picker prices
	i=0
	h_profit=0
	best_s_n=0
	best_b_n=0

	prices.each do |buy_num|
		i+=1
		prices[i..-1].each do|sell_num|
			if (sell_num - buy_num > h_profit)
				h_profit = sell_num - buy_num
				best_s_n=sell_num
				best_b_n=buy_num
			end

		end

	end
	puts h_profit
	puts best_b_n.to_s + " " + best_s_n.to_s 
end


stock_picker [30,1,1,2,3,2,3]