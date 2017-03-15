require 'pry'

# Iterate through the numbers 0 through 1000

class Fizz
  def divisible_3(number)
    true if number % 3 == 0
  end

  def divisible_5(number)
    true if number % 5 == 0
  end

  def divisible_7(number)
    true if number % 7 == 0
  end

  def evaluate(number)
    result = ""
    result += "Super" if divisible_7(number)
    result += "Fizz" if divisible_3(number)
    result += "Buzz" if divisible_5(number)
    result = number if result == ''
    result
  end
end

fizz = Fizz.new
(1..1000).each do |n|
  puts "#{n}: #{fizz.evaluate(n)}"
end
