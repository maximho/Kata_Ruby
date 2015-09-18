require "minitest/autorun"
require "pry"

def format_money(amount)
	"$%.2f" % amount
end


class Mytest < Minitest::Test

	def test_things
		assert_equal(format_money(39.99), '$39.99', "That's not formatted the way we expected")
		assert_equal(format_money(39.90), '$39.90', "That's not formatted the way we expected")
		assert_equal(format_money(39), '$39.00', "That's not formatted the way we expected")
	end
end
