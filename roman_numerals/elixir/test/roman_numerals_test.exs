Code.require_file "../test_helper", __FILE__

defmodule RomanNumeralsTest do
	use ExUnit.Case

	test "assert the truth" do
		assert RomanNumerals.to_roman(1) == "I"
		assert RomanNumerals.to_roman(2) == "II"
	end
end