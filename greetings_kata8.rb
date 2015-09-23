require "minitest/autorun"
require "pry"

def greeting(name)
	return "Hi my love!" if name == "Jonhy"
	return "Hi #{name}"
end

class Mytest < Minitest::Test

	def test_things

	end
end

def hola(name)
	return "Hi my love!" 
	return "Hi #{name}"
	return "como estas"
end