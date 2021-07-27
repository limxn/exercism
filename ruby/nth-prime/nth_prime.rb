=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end
class Prime
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def formula
    (number * number) + number + 41
  end

  def call
    max = formula
    numbers = (1..max).to_a
    cnt = 0
    numbers.each_with_index do |v,k|
      if v == 1
        numbers[k] = 0
        cnt += 1
        next
      end
      return v if cnt == number

      cnt += 1
    end
  end

  def self.nth(input)
    Prime.new(input).call
  end
end
