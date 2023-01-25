import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/provider/provider_played.dart';
import 'package:provider/provider.dart';

class GameResult extends StatefulWidget {
  const GameResult({super.key});

  @override
  State<GameResult> createState() => _GameResultState();
}

class _GameResultState extends State<GameResult> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Played>(
      builder: (context, value, child) {
        return Text(
          value.resultPlay,
          style: Theme.of(context).textTheme.titleLarge,
        );
      },
    );
  }
}
