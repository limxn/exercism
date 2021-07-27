# frozen_string_literal: true

class SumOfMultiples
  def initialize(*args)
    @numbers = args
  end

  def to(count)
    (1...count).map do |val|
      if @numbers.any? { |num| (val % num).zero? }
        val
      else
        0
      end
    end.sum
  end
end