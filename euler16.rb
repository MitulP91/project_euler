def sum_of_first_ten_digits(num, power)
	ans = num**power

	ans_array = ans.to_s.split('').map { |x| x.to_i }

	final = ans_array.inject(:+)
end

puts sum_of_first_ten_digits(2,1000)