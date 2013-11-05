require 'benchmark'

count = 1
limit = 1000

multiples = []

Benchmark.bmbm do |bm|

	bm.report("A") do
		while count < limit do
			if count % 3 == 0
				multiples << count
			elsif count % 5 == 0
				multiples << count
			end
			count += 1
		end
		ans = multiples.inject(:+)
	end

	# Rudy
	bm.report("B") do
		i = 0
		1.upto 999 do |num|
			if num % 3 == 0 || num % 5 == 0
				i += num
			end
		end
	end

	# Camila
	bm.report("C") do
		result = 0
		1000.times do |n| 
			if n%3 == 0
				result += n
			elsif n%5 == 0
				result += n
			end
		end
		puts result
	end

	# Sunmi
	bm.report("D") do
		sum = 0
		1.upto(999).each do |n|
			if n % 3 == 0 || n % 5 == 0
				sum += n
			end
		end
	end

	# Andrew
	bm.report("E") do
		def multiples(counter)
	    mult_result = 0;
	    (3...counter).to_a.each {|num| mult_result+=num if num%3==0 || num%5==0} 
	    return mult_result
		end
		puts multiples(1000)
	end

	# Matt
	bm.report("F") do
		def three_and_five_faster
			sum = 0
			for i in 1..333
				if (i %5 != 0)
					sum += i*3
				end
			end 
			for i in 1..199
				sum += i*5
			end
			puts sum
		end
		puts three_and_five_faster
	end

	# Scott
	bm.report("G") do
		answer = 0
		1000.times do |i|
			if i % 5 == 0 || i % 3 == 0
				answer += i
			end
		end
	end
end



