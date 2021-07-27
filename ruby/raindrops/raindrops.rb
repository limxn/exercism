# frozen_string_literal: true

# Write your code for the 'Raindrops' exercise in this file. Make the tests in
# `raindrops_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/raindrops` directory.
class Raindrops
  def self.convert(input)
    result = ''
    result += 'Pling' if (input % 3).zero?
    result += 'Plang' if (input % 5).zero?
    result += 'Plong' if (input % 7).zero?
    return input.to_s if result.size.zero?

    result
  end
end
