require 'minitest/autorun'
require 'roman_numerals'

describe RomanNumerals do
  it "something" do
   RomanNumerals.to_roman(1).must_equal 'I'
   RomanNumerals.to_roman(2).must_equal 'II'
   RomanNumerals.to_roman(3).must_equal 'III'
   RomanNumerals.to_roman(4).must_equal 'IV'
   RomanNumerals.to_roman(5).must_equal 'V'
   RomanNumerals.to_roman(8).must_equal 'VIII'

   RomanNumerals.to_roman(9).must_equal 'IX'
   RomanNumerals.to_roman(10).must_equal 'X'
   RomanNumerals.to_roman(39).must_equal 'XXXIX'

   RomanNumerals.to_roman(40).must_equal 'XL'
   RomanNumerals.to_roman(50).must_equal 'L'
   RomanNumerals.to_roman(89).must_equal 'LXXXIX'

   RomanNumerals.to_roman(90).must_equal 'XC'
   RomanNumerals.to_roman(100).must_equal 'C'
   RomanNumerals.to_roman(399).must_equal 'CCCXCIX'

   RomanNumerals.to_roman(400).must_equal 'CD'
   RomanNumerals.to_roman(500).must_equal 'D'
   RomanNumerals.to_roman(899).must_equal 'DCCCXCIX'

   RomanNumerals.to_roman(900).must_equal 'CM'
   RomanNumerals.to_roman(1000).must_equal 'M'
   RomanNumerals.to_roman(3999).must_equal 'MMMCMXCIX'
 end

  it "raises" do
    lambda { RomanNumerals.to_roman(-1) }.must_raise RuntimeError
    lambda { RomanNumerals.to_roman(0) }.must_raise RuntimeError
    lambda { RomanNumerals.to_roman(4000) }.must_raise RuntimeError
  end
end
