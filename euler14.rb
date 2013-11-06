require 'benchmark'

# Not very efficient. Come back later -------------------------------------

def find_next_collatz(n)
	if n == 1
		return 1
	elsif n % 2 == 0
		n = n / 2
		return n
	else
		n = (3 * n) + 1
		return n
	end
end

def collatz_sequence(start_num)
	n = start_num
	collatz = [n]

	until n == 1
		n = find_next_collatz(n)
		collatz << n
	end

	collatz
end


Benchmark.bmbm do |bm|
	bm.report("A") do
		largest_collatz = []

		999_999.downto(1).each do |i|
			new_collatz = collatz_sequence(i)

			if new_collatz.length > largest_collatz.length
				largest_collatz = new_collatz
			end
		end
		largest_collatz.first
	end
end
