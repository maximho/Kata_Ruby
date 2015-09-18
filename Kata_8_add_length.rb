require "minitest/autorun"
require "pry"

def add_length(str)
	array = str.split(" ")
	array.map {|k| k + " " + k.length.to_s}
end

class Mytest < Minitest::Test

	def test_things
    assert_equal(add_length('apple ban'),["apple 5", "ban 3"])
    assert_equal(add_length('you will win'),["you 3", "will 4", "win 3"])
    assert_equal(add_length('you'),["you 3"])
    assert_equal(add_length('y'),["y 1"])
 	end

end
