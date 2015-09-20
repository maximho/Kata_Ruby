require "minitest/autorun"
require "pry"

def DNAtoRNA(dna)
  dna.gsub(/T/,"U") # dna.tr(/T/,"U")
end

class Mytest < Minitest::Test

	def test_things
		assert_equal(DNAtoRNA("TTTT"), "UUUU")
		assert_equal(DNAtoRNA("GCAT"), "GCAU")
		assert_equal(DNAtoRNA("GACCGCCGCC"), "GACCGCCGCC")
	end
end