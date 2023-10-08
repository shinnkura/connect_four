import 'package:connect_four/providers/game_provider.dart';
import 'package:connect_four/widgets/board_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameProvider(6, 7),
      child: const MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: BoardWidget(),
        ),
      ),
    );
  }
}
