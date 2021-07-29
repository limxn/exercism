# Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
# `run_length_encoding_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/run-length-encoding` directory.
class RunLengthEncoding

  def self.find_digit(input, i)
    result = []
    while i < input.size
      if input[i].to_i > 0
        result << input[i]
        i += 1
      else
        break
      end
    end
    result.join
  end

  def self.decode(input)
    return '' if input.size.zero?
    i = 0
    result = []
    while i < input.size
      if input[i].to_i.zero?
        result << input[i]
        i += 1
      else
        size = self.find_digit(input, i)
        result << input[i + size.size] * size.to_i
        i += size.size + 1
      end
    end
    result.join
  end

  def self.encode(input)
    return '' if input.size.zero?

    result = []
    i = 0
    while i < input.size
      l = result.last
      if l.nil? || l[1] != input[i]
        result << [1, input[i]]
      else
        result[-1][0] += 1
      end
      i += 1
    end
    result.map do |v|
      if v[0] > 1
        v[0].to_s + v[1]
      else
        v[1]
      end
    end.join
  end
end
