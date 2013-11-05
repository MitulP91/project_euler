def big_prime(num)
  prime = num

  (2..Math.sqrt(num).to_i).each do |i|
    if prime <= i
    	break 
    end

    while prime > i && prime % i == 0
    	prime /= i 
    end
  end
  prime
end