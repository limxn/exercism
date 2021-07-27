# frozen_string_literal: true

# Write your code for the 'Grains' exercise in this file. Make the tests in
# `grains_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/grains` directory.

class Grains
  def initialize(input)
    raise ArgumentError if input <= 0 || input > 64

    @input = input
  end

  def call
    2**(@input - 1)
  end

  def self.total
    2**64 - 1
  end

  def self.square(input)
    new(input).call
  end
end
