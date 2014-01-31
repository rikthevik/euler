#!/usr/bin/env ruby

$LOAD_PATH << '.'
require 'assert'

=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

def run(num)
  factors = (1..num).to_a
  for i in (2..num)
    
  end
end

assert { run 10 == 250 }
run 20

