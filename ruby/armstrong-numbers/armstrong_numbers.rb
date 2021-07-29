# Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
# `armstrong_numbers_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/armstrong-numbers` directory.

class ArmstrongNumbers
  def self.include?(number)
    size = number.to_s.each_char.size
    sum = number.to_s.each_char.inject(0) do |sum, n|
      sum + (n.to_i**size)
    end
    sum == number
  end
end
