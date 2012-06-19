require 'minitest/autorun'
require 'roman_numerals'

class RomanNumeralsTest < MiniTest::Unit::TestCase
  def test_convert_roman_to_arabic
    assert_equal 1,    RomanNumerals.to_arabic('I')
    assert_equal 2,    RomanNumerals.to_arabic('II')
    assert_equal 3,    RomanNumerals.to_arabic('III')

    assert_equal 4,    RomanNumerals.to_arabic('IV')
    assert_equal 5,    RomanNumerals.to_arabic('V')
    assert_equal 8,    RomanNumerals.to_arabic('VIII')

    assert_equal 9,    RomanNumerals.to_arabic('IX')
    assert_equal 10,   RomanNumerals.to_arabic('X')
    assert_equal 39,   RomanNumerals.to_arabic('XXXIX')

    assert_equal 40,   RomanNumerals.to_arabic('XL')
    assert_equal 50,   RomanNumerals.to_arabic('L')
    assert_equal 89,   RomanNumerals.to_arabic('LXXXIX')

    assert_equal 90,   RomanNumerals.to_arabic('XC')
    assert_equal 100,  RomanNumerals.to_arabic('C')
    assert_equal 399,  RomanNumerals.to_arabic('CCCXCIX')

    assert_equal 400,  RomanNumerals.to_arabic('CD')
    assert_equal 500,  RomanNumerals.to_arabic('D')
    assert_equal 899,  RomanNumerals.to_arabic('DCCCXCIX')

    assert_equal 900,  RomanNumerals.to_arabic('CM')
    assert_equal 1000, RomanNumerals.to_arabic('M')
    assert_equal 3999, RomanNumerals.to_arabic('MMMCMXCIX')
  end
end