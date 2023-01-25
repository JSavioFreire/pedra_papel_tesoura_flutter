import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/provider/provider_played.dart';
import 'package:provider/provider.dart';

class MyPlayed extends StatefulWidget {
  const MyPlayed({super.key});

  @override
  State<MyPlayed> createState() => _MyPlayedState();
}

class _MyPlayedState extends State<MyPlayed> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            const Text('Você jogou:'),
            Consumer<Played>(
              builder: ((BuildContext context, value, Widget? widget) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    value.play,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              }),
            ),
          ],
        ),
      ],
    );
  }
}
