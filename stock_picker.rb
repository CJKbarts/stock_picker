def stock_picker(stocks)
    l_index = 0
    r_index = stocks.length - 1
    result = [l_index, r_index]

    while l_index <= r_index
        result[0] = l_index if stocks[l_index] < stocks[result[0]]
        result[1] = r_index if stocks[r_index] > stocks[result[1]]

        l_index += 1
        r_index -= 1
    end

    result
end
