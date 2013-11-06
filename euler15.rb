def factorial(num)
	product = 1
	(1..num).each do |i|
		product *= i
	end
	product
end

def grid_paths(height, width)
	perim_factorial = factorial(height + width)
	area_factorial = factorial(height) * factorial(width)

	paths = perim_factorial / area_factorial
end

puts grid_paths(20,20)