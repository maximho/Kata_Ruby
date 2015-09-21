require "minitest/autorun"
require "pry"

def divide_numbers(x, y)
  x.to_f / y.to_f
end

class Mytest < Minitest::Test

	def test_things
  	assert_equal divide_numbers(4,2), 2, '4 / 2'
  	assert_equal divide_numbers(10,2), 5, '10 / 2'
  	assert_equal divide_numbers(9,4), 2.25, '9 / 4'
  	assert_equal divide_numbers(21, 5), 4.2, '21 / 5'
  	assert_equal divide_numbers(9, 3), 3, '9 / 3'
  	assert_equal divide_numbers(1, 100), 0.01, '1 / 100'
	end
end