require "minitest/autorun"
require "pry"

def create_array(n)
  res=[]
  i=1
  while i<=n
    res+=[i]
  i+=1
  end
  return res
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(create_array(3),[1,2,3])
	end
end