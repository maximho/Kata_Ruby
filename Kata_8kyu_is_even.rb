require "minitest/autorun"
require "pry"

def test_even(n)
  if n.is_a?(Float)
  	false
  elsif n.even?
  	true
  else
  	false
  end
end

class Mytest < Minitest::Test

	def test_whatever 
		assert_equal(test_even(0), true, "testEven for 0");
		assert_equal(test_even(0.5), false, "testEven for 0.5");
		assert_equal(test_even(1), false, "testEven for 1");
		assert_equal(test_even(2), true, "testEven for 2");
		assert_equal(test_even(-4), true, "testEven for 2");
	end
end

