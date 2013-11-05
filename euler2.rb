limit = 4_000_000
i = 1
num = 0
sum = 2

fibonacci = [1,2]

while num <= limit
	num = fibonacci[i] + fibonacci[i-1]

	if num <= limit
		fibonacci << num
	end

	if num % 2 == 0
		sum += num
	end

	i += 1
end