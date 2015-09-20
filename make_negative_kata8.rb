require "minitest/autorun"
require "pry"

def makeNegative(num)
	if num > 0
	return -num
	else 
	return num
	end
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(makeNegative(1),-1)
		assert_equal(makeNegative(-5),-5)
	end
end