# frozen_string_literal: true

# Write your code for the 'Luhn' exercise in this file. Make the tests in
# `luhn_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/luhn` directory.

class Luhn
  def self.valid?(input)
    input = input.strip
    return false if input.length == 1

    match = input.match(/[a-zA-Z-£$:]/)
    return false if match&.size&.positive?

    values = input.scan(/\d/).reverse.map(&:to_i)
    sum = 0
    values.each_with_index do |value, index|
      if index.odd?
        value *= 2
        value -= 9 if value > 9
      end
      sum += value
    end
    (sum % 10).zero?
  end
end
