require "minitest/autorun"
require "pry"


def summation(num)
	sum = 0
	i = 0
	arr = (1..num).to_a
	while i < arr.length
	sum = sum + arr[i] 
	i = i + 1 
	end
	sum
end

class Mytest < Minitest::Test

	def test_things
    assert_equal(summation(1), 1)
    assert_equal(summation(8), 36)
  end
end


















	