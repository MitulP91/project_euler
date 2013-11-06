require 'benchmark'

# Not very efficient. Come back later -------------------------------------

def checkTriangleNum(limit)
	num = [1]
	count = 1
	multiples = 1

	until multiples > limit
		triangle_num = num.inject(:+)
		multiples = findMultiples(triangle_num)

		if multiples <= limit
			count += 1
			num << count
		end
	end
	triangle_num
end

def findMultiples(num)
	count = 0
	sqrt = Math.sqrt(num)
	(1..sqrt).to_a.each do |i|
		if num % i == 0
			count += 2
		end
	end
	if sqrt * sqrt == num
    count -= 1;
  end

	return count
end

Benchmark.bmbm do |bm|
	bm.report("A") do
		checkTriangleNum(500)
	end
end