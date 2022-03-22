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
      puts "[#{i}][#{j}]"
      # if i != row && j != col
        
      #   count += 1
      # end
    end
  end

  count
end

ex = example1
puts "For #{ex} there is a count of #{neighbor_counter(1, 1, ex)}."


