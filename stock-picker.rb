def stock_picker(stock)

    min_p = stock[0]
    min_index = 0
    profit = 0
    days = [0,0]

    stock.each_with_index do |p, i|
        if p < min_p
            min_p = p
            min_index = i
            next
        end

        if p - min_p > profit
            profit = p - min_p
            days = [min_index, i]
        end
    end
    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([3,2,6,25,6,26,74,4,23,15,3,6,5])