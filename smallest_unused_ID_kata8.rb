require "minitest/autorun"
require "pry"



def next_id(arr)
	if arr[1] > arr[0] && arr.each_cons(2).map { |a,b| b-a }.all? {|c| c = 1} && arr[0] == 0
		return arr.last.next
	elsif arr[0] != 0
		return 0
	end
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(next_id([0,1,2,3,4,5,6,7,8,9,10]), 11)
		assert_equal(next_id([5,4,3,2,1]), 0)
		assert_equal(next_id([0,1,2,3,5]), 4)
		assert_equal(next_id([0,0,0,0,0,0]), 1)
		assert_equal(next_id([]), 0)
	end
end

  #if arr.each_cons(2).map { |a,b| b-a }.all? {|c| c = 1}


