require "minitest/autorun"
require "pry"

def repeat_it(string,n)
	if string.class == String
		string*n
	else
		print "Not a string!"
	end
end

class Mytest < Minitest::Test

	def test_things
assert_equal(repeat_it("*",3), "***", 'Returned unexpected value')
assert_equal(repeat_it("Hello",11), "HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello", 'Returned unexpected value')
	end
end


