def convert_int_to_chars(start_num, end_num)
	numbers = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teens = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	tens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	num = end_num
	num_of_chars = 0

	while num >= start_num
		if num == 1000
			num_of_chars += "onethousand".length
		elsif num >= 100 && num < 1000
			num_of_chars += hundreds(num)
		elsif num >= 10 && num < 100
			num_of_chars += tens(num)
		else
			num_of_chars += numbers[num].length
		end
		num -= 1
	end
	num_of_chars
end

def hundreds(num)
	numbers = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teens = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	tens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	num_array = num.to_s.split('').map { |x| x.to_i }

	num_string = "#{numbers[num_array[0]]} hundred"

	if num_array[1] == 0 && num_array[2] == 0
		return num_string.gsub(' ', '').length
	elsif num_array[1] == 1
		num_string += "and #{tens[num_array[2]]}"
		return num_string.gsub(' ', '').length
	else
		num_string += "and #{teens[num_array[1]]} #{numbers[num_array[2]]}"
		return num_string.gsub(' ', '').length
	end
end

def tens(num)
	numbers = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teens = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	tens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	num_array = num.to_s.split('').map { |x| x.to_i }

	if num_array[0] == 1
		num_string = "#{tens[num_array[1]]}"
		return num_string.gsub(' ', '').length
	else
		num_string = "#{teens[num_array[0]]} #{numbers[num_array[1]]}"
		return num_string.gsub(' ', '').length
	end
end

puts convert_int_to_chars(1, 1000)


