require "minitest/autorun"
require "pry"

def find_slope(p)
	return "undefined" if p[0] == p[2]
  m = (p[1] - p[3]) / (p[0] - p[2])
  m.to_s
end


class Mytest < Minitest::Test

	def test_things
		assert_equal(find_slope([12,-18,-15,-18]),"0")
		assert_equal(find_slope([3,-20,5,8]),"14")
		assert_equal(find_slope([17,-3,17,8]),"undefined")
		assert_equal(find_slope([1,-19,-2,-7]),"-4")
		assert_equal(find_slope([19,3,20,3]),"0")
		assert_equal(find_slope([6,-12,15,-3]),"1")
		assert_equal(find_slope([15,-3,15,-3]),"undefined")
		assert_equal(find_slope([9,3,19,-17]),"-2")
		assert_equal(find_slope([3,6,4,10]),"4")
		assert_equal(find_slope([2,7,4,-7]),"-7")
	end
end