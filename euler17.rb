def convert_int_to_chars(start_num, end_num)
	numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	num = end_num
	num_of_chars = 0
	while num >= start_num
		split_num_array = num.to_s.gsub('0', '').split('').map { |x| x.to_i }

		split_num_array.each do |n|
			puts "#{n}: #{numbers[n].length}"
			num_of_chars += numbers[n].length
		end
		num -= 1
	end

	num_of_chars
end

puts convert_int_to_chars(1, 1000)