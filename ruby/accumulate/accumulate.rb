# frozen_string_literal: true

# Write your code for the 'Accumulate' exercise in this file. Make the tests in
# `accumulate_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/accumulate` directory.
class Array
  def accumulate
    result = []
    ar = self
    ar.each do |v|
      result << yield(v)
    end
    result
  end
end
