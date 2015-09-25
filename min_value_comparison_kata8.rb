require "minitest/autorun"
require "pry"


list = [0,1,2,3,5,8,13]
def min(list)
	list.min {|a,b| a <=> b }
end

class Mytest < Minitest::Test

	def test_things
	assert_equal(min(list){|a,b| a <=> b}, 0, "0 is the lowest numeric value in the list")
  assert_equal(min(list){|a,b| a.to_s <=> b.to_s}, 0, "the string version of 0 is the lowest string version in the list")
  assert_equal(min(list){|a,b| 0-a <=> 0-b}, 13, "13 is the lowest value in the list when subtracted from 0")

  assert_equal(min([]){|a,b| a <=> b}, nil, "empty list should return nil")
	end
end

# Create a method min that accepts a list and a block, 
# runs the block for each comparison in the list, and 
# returns the item with the lowest value.