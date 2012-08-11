require 'roman_numerals'

describe RomanNumerals do
  it "something" do
   RomanNumerals.to_roman(1).should == 'I'
   RomanNumerals.to_roman(2).should == 'II'
   RomanNumerals.to_roman(3).should == 'III'
   RomanNumerals.to_roman(4).should == 'IV'
   RomanNumerals.to_roman(5).should == 'V'
   RomanNumerals.to_roman(8).should == 'VIII'

   RomanNumerals.to_roman(9).should == 'IX'
   RomanNumerals.to_roman(10).should == 'X'
   RomanNumerals.to_roman(39).should == 'XXXIX'

   RomanNumerals.to_roman(40).should == 'XL'
   RomanNumerals.to_roman(50).should == 'L'
   RomanNumerals.to_roman(89).should == 'LXXXIX'

   RomanNumerals.to_roman(90).should == 'XC'
   RomanNumerals.to_roman(100).should == 'C'
   RomanNumerals.to_roman(399).should == 'CCCXCIX'

   RomanNumerals.to_roman(400).should == 'CD'
   RomanNumerals.to_roman(500).should == 'D'
   RomanNumerals.to_roman(899).should == 'DCCCXCIX'

   RomanNumerals.to_roman(900).should == 'CM'
   RomanNumerals.to_roman(1000).should == 'M'
   RomanNumerals.to_roman(3999).should == 'MMMCMXCIX'
 end

  it "raises" do
    lambda { RomanNumerals.to_roman(-1) }.should raise_error
    lambda { RomanNumerals.to_roman(0) }.should raise_error
    lambda { RomanNumerals.to_roman(4000) }.should raise_error
  end
end
