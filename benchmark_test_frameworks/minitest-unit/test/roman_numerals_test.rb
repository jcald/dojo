require 'minitest/autorun'
require 'roman_numerals'

class RomanNumeralsTest < MiniTest::Unit::TestCase

  def test_convert_numerals_to_roman
    assert_equal "I",         RomanNumerals.to_roman(1)
    assert_equal "II",        RomanNumerals.to_roman(2)
    assert_equal "III",       RomanNumerals.to_roman(3)
    assert_equal "IV",        RomanNumerals.to_roman(4)
    assert_equal "V",         RomanNumerals.to_roman(5)
    assert_equal "VIII",      RomanNumerals.to_roman(8)

    assert_equal "IX",        RomanNumerals.to_roman(9)
    assert_equal "X",         RomanNumerals.to_roman(10)
    assert_equal "XXXIX",     RomanNumerals.to_roman(39)

    assert_equal "XL",        RomanNumerals.to_roman(40)
    assert_equal "L",         RomanNumerals.to_roman(50)
    assert_equal "LXXXIX",    RomanNumerals.to_roman(89)

    assert_equal "XC",        RomanNumerals.to_roman(90)
    assert_equal "C",         RomanNumerals.to_roman(100)
    assert_equal "CCCXCIX",   RomanNumerals.to_roman(399)

    assert_equal "CD",        RomanNumerals.to_roman(400)
    assert_equal "D",         RomanNumerals.to_roman(500)
    assert_equal "DCCCXCIX",  RomanNumerals.to_roman(899)

    assert_equal "CM",        RomanNumerals.to_roman(900)
    assert_equal "M",         RomanNumerals.to_roman(1000)
    assert_equal "MMMCMXCIX", RomanNumerals.to_roman(3999)
  end

  def test_invalid_input
    assert_raises(RuntimeError) do
      RomanNumerals.to_roman(-1)
    end

    assert_raises(RuntimeError) do
      RomanNumerals.to_roman(0)
    end

    assert_raises(RuntimeError) do
      RomanNumerals.to_roman(4000)
    end
  end

end
