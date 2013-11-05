# Fairly hacky way of doing it

def checkPalindrome?(num)
	palindrome = false
	num_string = num.to_s

	if num_string == num_string.reverse
		palindrome = true
	end

	palindrome
end

answer = 0

numbers = 999.downto(1).to_a

multiplier = 999
continue = true

while continue
	numbers.each do |num|
		if num > 1
			product = multiplier * num
			if checkPalindrome?(product)
				answer = product
				continue = false
				break
			end
		end

		if num == 900
			multiplier -= 1
			continue = true
			break
		end
	end
end