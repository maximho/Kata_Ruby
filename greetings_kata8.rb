require "minitest/autorun"
require "pry"

def greet(name)
	return "Hello, my love!" if name == "Johnny"
	return "Hello, #{name}!"
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(greet("James"), "Hello, James!")
    assert_equal(greet("Jane"), "Hello, Jane!")
    assert_equal(greet("Jim"), "Hello, Jim!")
		assert_equal(greet("Johnny"), "Hello, my love!")
  end
end


