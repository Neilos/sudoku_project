class BoardPrinter

  def print(board)
    puts grid(board)
  end

  def grid(board)
    result = ""
    board.cells.each_with_index do |cell, index|
       result << "|\n\n" if (index % 9 == 0) && index != 0
       result << "+---------+---------+---------+\n" if (index % 27 == 0)
       result << "|" if (index % 3 == 0)
       result << " " + cell.to_s + " "
    end
    result << "|\n+---------+---------+---------+\n\n"
  end

end

#print representation of a board
#+-----------+-----------+-----------+
#| 1   *   * | 2   *     | 5         |
#
#| *   3   * | 2   *   6 |         7 |
#
#| 1   *   * |     4     | 9         |
#+-----------+-----------+-----------+
#| 1         | 2         | 5         |
#
#|     3     | 2       6 |         7 |
#
#| 1         |     4     | 9         |
#+-----------+-----------+-----------+
#| 1         | 2         | 5         |
#|
#|     3     | 2       6 |         7 |
#|
#| 1         |     4     | 9         |
#+-----------+-----------+-----------+
