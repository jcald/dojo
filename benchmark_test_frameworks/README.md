# Benchmarks:

+ Rspec: `rspec test/roman_numerals_test.rb`
+ MiniTest Unit/Spec: `ruby -Ilib test/roman_numerals_test.rb`

## Results:

### Rspec:

```
$ time rspec test/roman_numerals_test.rb
..

Finished in 0.00153 seconds
2 examples, 0 failures

real  0m0.396s
user  0m0.330s
sys 0m0.062s

$ time rspec test/roman_numerals_test.rb
..

Finished in 0.00153 seconds
2 examples, 0 failures

real  0m0.386s
user  0m0.323s
sys 0m0.060s

$ time rspec test/roman_numerals_test.rb
..

Finished in 0.00149 seconds
2 examples, 0 failures

real  0m0.375s
user  0m0.313s
sys 0m0.058s
```

### MiniTest/Spec:

```
$ time ruby -Ilib test/roman_numerals_test.rb
..

Finished tests in 0.000837s, 2389.4863 tests/s, 28673.8351 assertions/s.

2 tests, 24 assertions, 0 failures, 0 errors, 0 skips

real  0m0.268s
user  0m0.222s
sys 0m0.042s

$ time ruby -Ilib test/roman_numerals_test.rb
..

Finished tests in 0.000842s, 2375.2969 tests/s, 28503.5629 assertions/s.

2 tests, 24 assertions, 0 failures, 0 errors, 0 skips

real  0m0.266s
user  0m0.221s
sys 0m0.042s

$ time ruby -Ilib test/roman_numerals_test.rb
..

Finished tests in 0.001016s, 1968.5039 tests/s, 23622.0472 assertions/s.

2 tests, 24 assertions, 0 failures, 0 errors, 0 skips

real  0m0.272s
user  0m0.225s
sys 0m0.043s
```

### MiniTest/Unit:

```
$ time ruby -Ilib test/roman_numerals_test.rb
..

Finished tests in 0.001051s, 1902.9496 tests/s, 22835.3949 assertions/s.

2 tests, 24 assertions, 0 failures, 0 errors, 0 skips

real  0m0.277s
user  0m0.227s
sys 0m0.047s

$ time ruby -Ilib test/roman_numerals_test.rb
..

Finished tests in 0.000944s, 2118.6441 tests/s, 25423.7288 assertions/s.

2 tests, 24 assertions, 0 failures, 0 errors, 0 skips

real  0m0.282s
user  0m0.235s
sys 0m0.044s

$ time ruby -Ilib test/roman_numerals_test.rb
..

Finished tests in 0.001008s, 1984.1270 tests/s, 23809.5238 assertions/s.

2 tests, 24 assertions, 0 failures, 0 errors, 0 skips

real  0m0.303s
user  0m0.255s
sys 0m0.044s
```
