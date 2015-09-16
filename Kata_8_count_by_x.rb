require "minitest/autorun"
require "pry"

def count_by(x, n)
	a = []
	i = 0
	y = x
	while i < n
		a[i] = x 
		x = a[i] + y
		i = i + 1
	end
	a
end

print count_by(2,5)
 
class Mytest < Minitest::Test

	def test_things
		assert_equal(count_by(1, 5), [1, 2, 3, 4, 5])
		assert_equal(count_by(2, 5), [2, 4, 6, 8, 10])
		assert_equal(count_by(3, 5), [3, 6, 9, 12, 15])
		assert_equal(count_by(50, 5), [50, 100, 150, 200, 250])
		assert_equal(count_by(100, 5), [100, 200, 300, 400, 500])
	end
end