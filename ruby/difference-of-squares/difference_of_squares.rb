class Squares
  def initialize(number)
    @range = 1..number
  end

  def square_of_sum
    sum = @range.sum
    sum * sum
  end

  def sum_of_squares
    @range.map { |v| v * v }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
