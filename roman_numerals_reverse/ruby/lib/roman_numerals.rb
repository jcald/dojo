class RomanNumerals
  ROMANS = {
    'M'  => 1000,
    'CM' => 900,
    'D'  => 500,
    'CD' => 400,
    'C'  => 100,
    'XC' => 90,
    'L'  => 50,
    'XL' => 40,
    'X'  => 10,
    'IX' => 9,
    'V'  => 5,
    'IV' => 4,
    'I'  => 1
  }

  def self.to_arabic roman
    numeral = 0

    ROMANS.each do |key, value|
      while roman.start_with?(key)
        roman.sub! key, ''
        numeral += value
      end
    end

    numeral
  end
end