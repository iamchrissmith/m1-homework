require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'super_fizz'

class FizzTest < Minitest::Test
  def test_fizz_exists
    fizz = Fizz.new

    assert fizz
  end

  # Otherwise print just the number
  def test_else_fizz_returns_number
    fizz = Fizz.new
    number = 11
    assert_equal number, fizz.evaluate(number)
  end

  # If it’s evenly divisible by 7, print Super
  def test_divisible_by_7_returns_super
    fizz = Fizz.new
    number = 7
    assert_equal "Super", fizz.evaluate(number)
  end

  # If it’s evenly divisible by 5, print Buzz
  def test_divisible_by_5_returns_buzz
    fizz = Fizz.new
    number = 5
    assert_equal "Buzz", fizz.evaluate(number)
  end

  # If it’s evenly divisible by 3, print Fizz
  def test_divisible_by_3_returns_fizz
    fizz = Fizz.new
    number = 3
    assert_equal "Fizz", fizz.evaluate(number)
  end

  # If it’s evenly divisible by 3 and 5 print FizzBuzz
  def test_divisible_by_3_and_5_returns_fizzbuzz
    fizz = Fizz.new
    number = 15
    assert_equal "FizzBuzz", fizz.evaluate(number)
  end

  # If it’s evenly divisible by 5 and 7 print SuperBuzz
  def test_divisible_by_5_and_7_returns_superbuzz
    fizz = Fizz.new
    number = 35
    assert_equal "SuperBuzz", fizz.evaluate(number)
  end

  # If it’s evenly divisible by 3 and 7 print SuperFizz
  def test_divisible_by_3_and_7_returns_superfizz
    fizz = Fizz.new
    number = 21
    assert_equal "SuperFizz", fizz.evaluate(number)
  end

  # If it’s evenly divisible by 3, 5, and 7 print SuperFizzBuzz
  def test_divisible_by_3_and_5_and_7_returns_superfizzbuzz
    fizz = Fizz.new
    number = 945
    assert_equal "SuperFizzBuzz", fizz.evaluate(number)
  end
end
