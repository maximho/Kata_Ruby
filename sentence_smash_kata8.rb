require "minitest/autorun"
require "pry"

# Smash Words
def smash(words)
	words.join(" ")
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(smash(["hello"]), "hello")
		assert_equal(smash(["hello", "world"]), "hello world")
	end
end