require "minitest/autorun"
require "pry"

def find_average(nums)
	sum = 0
	nums.each do |k| 
		sum += k
		puts sum
	end
	nums.each { |k| sum+=k ; puts sum } 
	sum / nums.size
end

def find_average(nums)
	return 0 if nums.empty?
	sum = 0
	for k in nums
		sum += k
	end
	sum / nums.size
end

	




class Mytest < Minitest::Test

	def test_things
		# assert_equal EXPECTED, TO_TEST

		assert_equal(1, find_average([1]))
		assert_equal(find_average([1, 3, 5, 7]), 4)
		assert_equal(find_average([-1, 3, 5, -7]), 0)
		assert_equal(5.5, find_average([5.0, 7, 3, 7]))
		assert_equal(find_average([]), 0)
	end
end