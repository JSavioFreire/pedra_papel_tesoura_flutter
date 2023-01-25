import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/components/sections/home/matchs.dart';
import 'package:pedra_papel_tesoura/components/widgets/timer_to_play.dart';
import 'package:pedra_papel_tesoura/provider/provider_played.dart';
import 'package:provider/provider.dart';

class ButtonToPlay extends StatelessWidget {
  const ButtonToPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Played>(
        builder: ((BuildContext context, value, Widget? widget) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const Matchs(),
            const TimerToPlay(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    value.addPlayed('Pedra');
                  },
                  child: const Text('Pedra'),
                ),
                ElevatedButton(
                  onPressed: () {
                    value.addPlayed('Papel');
                  },
                  child: const Text('Papel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    value.addPlayed('Tesoura');
                  },
                  child: const Text(
                    'Tesoura',
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }));
  }
}
