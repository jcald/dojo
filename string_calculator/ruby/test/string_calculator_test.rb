require "minitest/autorun"
require "string_calculator"

class StringCalculatorTest < MiniTest::Unit::TestCase

  def test_add_returns_zero_when_passing_zero
    assert_equal 0, StringCalculator.add("0")
  end

  def test_add_returns_three_when_passing_one_and_two
    assert_equal 3, StringCalculator.add("1,2")
  end

  def test_add_returns_six_when_passing_one_two_break_and_three
    assert_equal 6, StringCalculator.add("1,2\n3")
  end

  def test_add_returns_six_when_delimiter_is_asterisk
    assert_equal 6, StringCalculator.add("//[*]1*2*3")
  end

  def test_add_returns_six_when_delimiters_are_asterisk_and_comma
    assert_equal 6, StringCalculator.add("//[*]1*2,3")
  end

  def test_add_returns_ten_when_delimiters_are_asterisk_break_and_comma
    assert_equal 10, StringCalculator.add("//[*]1\n2,3*4")
  end

  def test_add_returns_six_when_delimiters_are_two_asterisks_and_comma
    assert_equal 6, StringCalculator.add("//[**]1**2,3")
  end
end
