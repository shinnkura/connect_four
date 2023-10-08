import 'package:connect_four/models/board.dart';
import 'package:flutter/foundation.dart';

class GameProvider with ChangeNotifier {
  final Board _board;
  int _currentPlayer;

  GameProvider(int rows, int columns)
      : _board = Board(rows, columns),
        _currentPlayer = 1;

  int get currentPlayer => _currentPlayer;

  int cellValue(int row, int col) {
    return _board.cellValue(row, col);
  }

  void makeMove(int row, int col) {
    if (_board.cellValue(row, col) == 0) {
      _board.setCellValue(row, col, _currentPlayer);
      _switchPlayer();
      notifyListeners();
    }
  }

  void _switchPlayer() {
    _currentPlayer = _currentPlayer == 1 ? 2 : 1;
  }

  void resetGame() {
    _board.reset();
    _currentPlayer = 1;
    notifyListeners();
  }
}
