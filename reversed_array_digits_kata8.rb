require "minitest/autorun"
require "pry"

def digitize(n)
  n.to_s.split("").map(&:to_i).reverse
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(digitize(35231),[1,3,2,5,3])
	end
end

# &: => {|k|k} 