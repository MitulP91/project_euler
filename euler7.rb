def prime?(num)
  (2..Math.sqrt(num).to_i).each do |i| 
  	if num % i == 0
  		return false 
  	end
  end

  true
end

def find_prime(num)
	primes = []
	current_num = 2

	while primes.length < num
		if prime?(current_num)
			primes << current_num
		end	
		current_num += 1
	end
	primes.last
end