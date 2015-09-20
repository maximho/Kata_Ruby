require "minitest/autorun"
require "pry"

def shortcut(s)
  return s.gsub(/[aeiou]/, "")
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(shortcut('hello'),'hll')
		assert_equal(shortcut('HELLO'),'HELLO')
	end
end