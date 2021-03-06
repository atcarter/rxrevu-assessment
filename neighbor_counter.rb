# Include the given examples for testing.
example1 = [
  [nil, nil, nil],
  [nil, "X", nil],
  [nil, nil, nil]
]

example2 = [
  ["X", "X", nil],
  [nil, "X", nil],
  [nil, nil, nil]
]

example3 = [
  ["X", "X", "X"],
  [nil, "X", nil],
  [nil, nil, nil]
]

example4 = [
  ["X", "X", "X"],
  [nil, nil, nil],
  [nil, "X", nil]
]

# Note: we should start counting at 0 for our row and column parameters.
def neighbor_counter(row, col, grid)
  count = 0

  rowLB = row - 1
  if rowLB < 0
    rowLB = 0
  end

  rowUB = row + 1
  if rowUB > 2
    rowUB = 2
  end

  neighbor_rows = (rowLB..rowUB).to_a

  colLB = col - 1
  if colLB < 0
    colLB = 0
  end
  
  colUB = col + 1
  if colUB > 2
    colUB = 2
  end

  neighbor_cols = (colLB..colUB).to_a

  for i in neighbor_rows do
    for j in neighbor_cols do
      if grid[i][j] == "X"
        count += 1
      end
    end
  end

  if grid[row][col] == "X"
    count -= 1
  end

  count
end

#Exercise
ex = [example1, example2, example3, example4]
for i in ex do
  puts "For #{i} there is a count of #{neighbor_counter(1, 1, i)} around the center cell."
end

#Bonus Exercise
for i in ex do
  puts "Bonus: For #{i} there is a count of #{neighbor_counter(0, 0, i)} around the top left cell."
end

#Start of Technical Interview 3/30
example5 = [
  [nil, nil, nil],
  [nil, "X", nil],
  [nil, nil, nil]
]

example6 = [
  ["X", "X", nil],
  [nil, "X", nil],
  [nil, nil, nil]
]

example7 = [
  ["X", "X", "X"],
  [nil, "X", nil],
  [nil, "X", nil]
]

example8 = [
  ["X", "X", "X"],
  [nil, "X", nil],
  [nil, nil, nil]
]

def active?(cell)
  cell == "X" ? true : false
end

def modify_grid(g)

  grid = [
  [nil, nil, nil],
  [nil, nil, nil],
  [nil, nil, nil]
]

  g.each_with_index do |row, index|
    row.each_with_index do |cell, i|
      if active?(cell) && neighbor_counter(index, i, g) < 2
        grid[index][i] = nil

      elsif active?(cell) && neighbor_counter(index, i, g) == 2 || neighbor_counter(index, i, g) == 3
        grid[index][i] = "X"

      elsif active?(cell) && neighbor_counter(index, i, g) > 3
        grid[index][i] = nil

      elsif !active?(cell) && neighbor_counter(index, i, g) == 3
        grid[index][i] = "X"

      else
        
      end
    end
  end 

  return grid

end

ex2 = [example5, example6, example7, example8]

for i in ex2 do
  puts "For #{i} the answer is #{modify_grid(i)}"
end


