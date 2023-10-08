import 'package:flutter/material.dart';

class CellWidget extends StatelessWidget {
  final int value;

  const CellWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    Color color;
    if (value == 0) {
      color = Colors.grey;
    } else if (value == 1) {
      color = Colors.red;
    } else {
      color = Colors.yellow;
    }

    return Container(
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
