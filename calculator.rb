# testing
require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_three, number_four)
    return number_three - number_four
  end

  def multiply(number_five, number_six)
    return number_five * number_six
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def remainder(dividend, divisor)
    return dividen % divisor
  end
  def square(number)
    return number * number
  end

  def square_root(number)
    Math.sqrt(number)
  end

  def power(number, exponent)
    return number ** exponent
  end

  # def add_multiple_numbers(*numbers)
  #   sum = 0
  #   numbers.each do |number|
  #     sum += number
  #   end
  # end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(5, 20)
      expect(result).to eq(25)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(17, 5)
      expect(result).to eq(12)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(9, 12)
      expect(result).to eq(108)
    end   
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(1024, 4)
      expect(result).to eq(256)
    end
  end

  describe '#remainder' do
    it 'should return the leftover of one number divided by another number' do
      calculator = Calculator.new
      result = calculator.remainder(400, 3)
      expect(result).to eq(1)
    end
  end
 
  describe '#square' do
    it 'should return the product of a number times itself' do
      calculator = Calculator.new
      result = calculator.square(25)
      expect(result).to eq(625)
    end
  end
 
  describe '#square_root' do
    it 'should return the square root of a number' do
      calculator = Calculator.new
      result = calculator.power(900)
      expect(result).to eq(30)
    end
  end

  describe '#power' do
    it 'should return a number times an exponent' do
      calculator = Calculator.new
      result = calculator.power(5, 10)
      expect(result).to eq(9765625)
    end
  end

end
