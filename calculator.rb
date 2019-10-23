require 'rspec'

class Calculator
  def add(number_one, number_two)
    number_one + number_two
  end

  def subtract(number_one, number_two)
    number_one - number_two
  end

  def multiply(number_one, number_two)
    number_one * number_two
  end

  def divide(dividend, divisor)
    dividend / divisor
  end

  def square(number)
    multiply(number, number)
  end

  def power(number, exponent)
    number ** exponent
  end

  def add_multiple_numbers(*numbers)
    numbers.sum
  end

  def square_root(number)
    Math.sqrt(number)
  end

  def remainder(dividend, divisor)
    dividend % divisor
  end
end


RSpec.describe Calculator do 
  describe '#add' do 
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 4)).to eq(6)
      expect(calculator.add(-4, 5)).to eq(1)
    end

    it 'should return a negative number if one negative is a greater absolute value than the other number.' do 
      calculator = Calculator.new
      expect(calculator.add(-10, 5)).to eq(-5)
      expect(calculator.add(-3, 5)).to eq(2)
    end
  end

  describe '#subtract' do 
    it 'should return the difference between two numbers' do 
      calculator = Calculator.new
      expect(calculator.subtract(7,4)).to eq(3)
    end
  end

  describe '#multiply' do 
    it 'should return the product of two numbers' do 
      calculator = Calculator.new
      expect(calculator.multiply(4,5)).to eq(20)
    end
  end

  describe '#divide' do 
    it 'should return the quotient of the first number given divided by the second number' do 
      calculator = Calculator.new
      expect(calculator.divide(12,4)).to eq(3)
    end
  end

  describe '#square' do 
    it 'should return the product of a single number multiplied by itself' do 
      calculator = Calculator.new
      expect(calculator.square(5)).to eq(25)
    end
  end

  describe '#power' do 
    it 'should return the product of the first number times itself, the second given number of times' do 
      calculator = Calculator.new
      expect(calculator.power(5,3)).to eq(125)
    end
  end

  describe '#add_multiple_numbers' do 
    it 'should return the sum of all given numbers as arguements' do 
      calculator = Calculator.new
      expect(calculator.add_multiple_numbers(42, 13, 20, 10, 15)).to eq(100)
      expect(calculator.add_multiple_numbers(42, 13, 20, 15)).to eq(90)
    end
  end

  describe '#square_root' do 
    it 'should return the square root of a number' do 
      calculator = Calculator.new
      expect(calculator.square_root(9)).to eq(3)
    end
  end

  describe '#remainder' do 
    it 'should return the remainder of one number number divided by a second number given' do 
      calculator = Calculator.new
      expect(calculator.remainder(10, 3)).to eq(1)
    end
  end
end


