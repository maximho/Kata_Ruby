require "minitest/autorun"
require "pry"

def sum(numbers)
	total = 0
	numbers.each {|n| total = total + n}
	total
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(sum([]), 0)
		assert_equal(sum([1, 5.2, 4, 0, -1]), 9.2)
	end
end

# Write a method sum (sum_array in python) that takes 
# an array of numbers and returns the sum of the 
# numbers. These may be integers or decimals for Ruby 
# and any instance of Num for Haskell. The numbers can 
# also be negative. If the array does not contain any 
# numbers then you should return 0.