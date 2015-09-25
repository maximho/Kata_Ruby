require "minitest/autorun"
require "pry"


def summation(num)
	sum = 0
  for k in (1..num).to_a
  	sum = sum + k
  end
  sum
end

class Mytest < Minitest::Test

	def test_things
    assert_equal(summation(1), 1)
    assert_equal(summation(8), 36)
  end
end

# Write a program that finds the summation of every 
# number between 1 and num. The number will always be 
# a positive integer greater than 0.