require "minitest/autorun"
require "pry"

def countSheeps array
    array.count(true)
end

class Mytest < Minitest::Test

	def test_things
		
				array1 = [true,  true,  true,  false,
    				      true,  true,  true,  true ,
        				  true,  false, true,  false,
      		    		true,  false, false, true ,
          				true,  true,  true,  true ,
          				false, false, true,  true ]
              
				assert_equal(countSheeps(array1), 17)
	end
end