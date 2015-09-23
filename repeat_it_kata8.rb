require "minitest/autorun"
require "pry"

# Cualquier lenguage
def repeat_it(str,n)
	if str.class != String
		return "Not a string!"
	end
	str_for = ""
	for k in (1..n).to_a
		str_for = str_for + str 
	end
	str_for
end

# Casi lo mismo que lo anterior
def repeat_it(str,n)
	if str.class == String
		str_for = ""
		for k in (1..n).to_a
			str_for = str_for + str 
		end
		str_for
	else
		"Not a string!"
	end
end


# Casi Cualquier lenguage
def repeat_it(str,n)
	return "Not a string!" if str.class != String 
	k = 0
	str_for = ""
	while k < n do # false y para
		str_for = str_for + str 
		# O aqui usas 'break' para también
		k += 1
	end
	str_for
end


# Forma Ruby
def repeat_it(string,n)
	if string.class == String
		string*n
	else
		"Not a string!"
	end
end

# Forma ruby
def repeat_it(str,n)
	return "Not a string!" if str.class != String
	string_each = ""
	(1..n).to_a.each {|k| string_each << str }
	# 1.upto(n).to_a.each {|k| string_each << str }
	string_each
end

# Forma ruby resumida con sugar sintax
def repeat_it(string,n)
	string.is_a?(String) ? string * n : "Not a string!"
end


# La forma Maximiliana que funciona
def repeat_it(str,n)
	return "Not a string!" if str.class != String
	(1..n).to_a.map {|k| str}.join
end



def multi_inteligente(a,b)
	return 0 if !a.is_a?(Numeric) or !b.is_a?(Numeric)
	a*b 
end




class Mytest < Minitest::Test

	def test_things
		assert_equal("***", repeat_it("*",3), 'Returned unexpected value')
		assert_equal("HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello", repeat_it("Hello",11), 'Returned unexpected value')
		assert_equal("Not a string!", repeat_it(Array.new(),11))
		assert_equal(0, multi_inteligente(Array.new(),{ f: 2 }))
		assert_equal(9.0, multi_inteligente(3.0, 3.0))
	end
end




