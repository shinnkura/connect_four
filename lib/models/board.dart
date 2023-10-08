class Board {
  final int rows;
  final int columns;
  final List<List<int>> _grid;

  Board(this.rows, this.columns) : _grid = List.generate(rows, (index) => List.filled(columns, 0));

  int cellValue(int row, int col) {
    return _grid[row][col];
  }

  void setCellValue(int row, int col, int value) {
    _grid[row][col] = value;
  }

  void reset() {
    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < columns; col++) {
        _grid[row][col] = 0;
      }
    }
  }
}
