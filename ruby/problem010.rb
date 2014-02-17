#!/usr/bin/env ruby

$LOAD_PATH << '.'
require 'assert'

=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end


Primes = [ 2 ]

def _is_prime(n)
  upper_bound = Math.sqrt(n).to_i
  for i in Primes
    if i == n
      return true
    elsif n % i == 0
      # puts "isn't prime based on primes"
      return false
    end
  end
  for i in Primes[-1]..upper_bound
    if n % i == 0
      # puts "isn't prime based on new count"
      return false
    end
  end
  # puts "is prime - created new prime #{n}"
  Primes.push(n)
  return true
end

def is_prime(n)
  retval = _is_prime(n)
  # puts "is_prime(#{n}) => #{retval}"
  return retval
end

i = 2
while Primes[-1] < 2_000_000
  is_prime i
  i += 1
end
# Remove the last one that's greater than 2M
Primes.slice! -1

puts Primes.inject(0) { |a,b| a+b }



