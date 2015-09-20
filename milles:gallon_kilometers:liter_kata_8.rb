require "minitest/autorun"
require "pry"

def converter(mpg)
  ("%.2f" % ((mpg * 1.609344) / 4.54609188)).to_f
end

class Mytest < Minitest::Test

	def test_things
		assert_equal 4.25, converter(12) 
		assert_equal(converter(24), 8.50)
		assert_equal(converter(36), 12.74)
	end
end