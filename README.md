# RxRevu Take-Home Assessment

Write a function that counts the number of active cells that are neighbors of the center cell in a 3x3 grid.

Bonus: write a similar function that counts the neighbors of any given cell.

Example: the below grid should return 4 using the center cell as the target.

|     |      | X   |
| --- | ---- | --- |
| X   | cell | X   |
|     |      | X   |

## Thought Process

Rather than write two functions, I decided to start with the bonus exercise to find the pattern for this assessment. I used a scratch sheet of paper to note the coordinates of the given cell and its neighbors. For the set of row values and the set of column values, I found that I needed to subtract 1 to find the lower bound and add 1 to find the upper bound (being careful to remain within the confines of the 3x3 grid). I used a nested loop to iterate through only these neighbors, incrementing the counter when arriving at an active cell. Should the target cell also be active, 1 is subtracted from the counter before returning a count of active, neighbor cells.
