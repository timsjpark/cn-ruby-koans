#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')

# Write a method called fizzbuzz that takes an integer as an argument
# If the integer is a multiple of 3, return 'fizz'
# If the integer is a multiple of 5, return 'buzz'
# If the integer is a multiple of 3 and 5, return 'fizzbuzz'
# If the integer is none of the above, return the integer as a string
#
# You can assume the input is always a positive integer

def fizzbuzz(input_int)
  return "fizzbuzz" if input_int % 3 == 0 && input_int % 5 == 0
  return "fizz" if input_int % 3 == 0
  return "buzz" if input_int % 5 == 0
  return input_int.to_s if input_int.is_a? Integer
end

class AboutFizzBuzz < Neo::Koan
  def test_fizzbuzz
    assert_equal fizzbuzz(1), '1'
    assert_equal fizzbuzz(7), '7'

    assert_equal fizzbuzz(3), 'fizz'
    assert_equal fizzbuzz(6), 'fizz'

    assert_equal fizzbuzz(20), 'buzz'
    assert_equal fizzbuzz(5), 'buzz'

    assert_equal fizzbuzz(15), 'fizzbuzz'
    assert_equal fizzbuzz(30), 'fizzbuzz'
  end
end