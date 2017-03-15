require 'pry'

# Iterate through the numbers 0 through 1000

class Fizz
  def evaluate(number)
    result = ""
    result += "Super" if number % 7 == 0
    result += "Fizz" if number % 3 == 0
    result += "Buzz" if number % 5 == 0
    result = number if result == ''
    result
  end
end

fizz = Fizz.new
(1..1000).each do |n|
  puts "#{n}: #{fizz.evaluate(n)}"
end
