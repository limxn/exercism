# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(value)
    raise ArgumentError if value > @digits.size

    result = []
    i = 0
    while i < @digits.size
      seq = @digits[i, value]
      break if seq.size != value

      result << seq
      i += 1
    end
    result
  end
end
