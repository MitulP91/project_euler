def prime?(num)
  (2..Math.sqrt(num).to_i).each do |i| 
  	if num % i == 0
  		return false 
  	end
  end

  true
end

primes = []
current_num = 2

while current_num < 2_000_000
	if prime?(current_num)
		primes << current_num
	end	
	current_num += 1
end

primes.inject(:+)
