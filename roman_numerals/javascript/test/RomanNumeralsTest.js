test('Convert numeral to roman', function () {
  equal(romanNumerals(1), 'I');
  equal(romanNumerals(2), 'II');
  equal(romanNumerals(3), 'III');

  equal(romanNumerals(4), 'IV');
  equal(romanNumerals(5), 'V');
  equal(romanNumerals(8), 'VIII');

  equal(romanNumerals(9), 'IX');
  equal(romanNumerals(10), 'X');
  equal(romanNumerals(39), 'XXXIX');
  
  equal(romanNumerals(90), 'XC');
  equal(romanNumerals(100), 'C');
  equal(romanNumerals(399), 'CCCXCIX');

  equal(romanNumerals(399), 'CCCXCIX');
  equal(romanNumerals(399), 'CCCXCIX');
  equal(romanNumerals(399), 'CCCXCIX');

  equal(romanNumerals(400), 'CD');
  equal(romanNumerals(500), 'D');
  equal(romanNumerals(899), 'DCCCXCIX');

  equal(romanNumerals(900), 'CM');
  equal(romanNumerals(1000), 'M');
  equal(romanNumerals(3999), 'MMMCMXCIX');
});

test('Numbers must be in range 1..3999', function () {
  raises(function() {
      romanNumerals(-1);
  }, 'Numeral has no roman representation');

  raises(function() {
      romanNumerals(-0);
  }, 'Numeral has no roman representation');

  raises(function() {
      romanNumerals(4000);
  }, 'Numeral has no roman representation');
});
