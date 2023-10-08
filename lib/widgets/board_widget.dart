import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:connect_four/providers/game_provider.dart';
import 'package:connect_four/widgets/cell_widget.dart';

class BoardWidget extends StatelessWidget {
  const BoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final gameProvider = Provider.of<GameProvider>(context);
    const rows = 6;
    const columns = 7;

    return Container(
      color: Colors.black,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columns,
        ),
        itemBuilder: (context, index) {
          final row = index ~/ columns;
          final col = index % columns;
          final cellValue = gameProvider.cellValue(row, col);

          return GestureDetector(
            onTap: () => gameProvider.makeMove(row, col),
            child: CellWidget(value: cellValue),
          );
        },
        itemCount: rows * columns,
      ),
    );
  }
}
