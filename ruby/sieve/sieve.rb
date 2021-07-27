# frozen_string_literal: true

def validate(row)
  filtered_row = row.select { |v| v.to_i.positive? }
  filtered_row.each do |v|
    return false if filtered_row.count(v) > 1
  end
  true
end

def validate_col(grid, col)
  result = []
  i = 0
  while i < grid.size
    result << grid[col][i]
    i += 1
  end
  validate(result)
end

def validate_square(grid, i)
  i_max = i + 3
  while i < i_max && i < grid.size
    grid[i][i]
    grid[i][i+1]
    grid[i][i+2]
    i += 1
  end
end

def solve(grid)
  i = 0
  while i < grid.size
    return false unless validate(grid[i])
    return false unless validate_col(grid, i)

    i += 1
  end
  i = 0
  while i < grid.size
    return false unless validate_square(grid, i)

    i += 3
  end
  true
end

grid = [
  %w[. . . 1 4 . . 2 .],
  %w[. . 6 . . . . . .],
  %w[. . . . . . . . .],
  %w[. . 1 . . . . . .],
  %w[. 6 7 . . . . . 9],
  %w[. . . . . . 8 1 .],
  %w[. 3 . . . . . . 6],
  %w[. . . . . 7 . . .],
  %w[. . . 5 . . . 7 .]
]

p solve(grid)
