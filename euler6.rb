def sum_square_difference(start, limit)
	squares = start.upto(limit).to_a
	sums = start.upto(limit).to_a
	sum_of_squares = 0
	sum = 0

	squares.each do |num|
		sum_of_squares += num * num
	end

	sums.each do |num|
		sum += num
	end

	square_of_sums = sum * sum

	difference = square_of_sums - sum_of_squares
end

sum_square_difference(1,100)