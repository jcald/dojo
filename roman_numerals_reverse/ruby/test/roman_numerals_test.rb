require 'minitest/autorun'
require 'roman_numerals'

class RomanNumeralsTest < MiniTest::Unit::TestCase
  def test_convert_roman_to_arabic
    assert_equal 1,  RomanNumerals.to_arabic('I')
    assert_equal 2,  RomanNumerals.to_arabic('II')
    assert_equal 3,  RomanNumerals.to_arabic('III')

    assert_equal 4,  RomanNumerals.to_arabic('IV')
    assert_equal 5,  RomanNumerals.to_arabic('V')
    assert_equal 8,  RomanNumerals.to_arabic('VIII')

    assert_equal 9,  RomanNumerals.to_arabic('IX')
    assert_equal 10, RomanNumerals.to_arabic('X')
    assert_equal 39, RomanNumerals.to_arabic('XXXIX')
  end
end