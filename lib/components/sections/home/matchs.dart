import 'package:flutter/cupertino.dart';
import 'package:pedra_papel_tesoura/components/widgets/box_card.dart';
import 'package:pedra_papel_tesoura/provider/provider_played.dart';
import 'package:provider/provider.dart';

class Matchs extends StatefulWidget {
  const Matchs({super.key});

  @override
  State<Matchs> createState() => _MatchsState();
}

class _MatchsState extends State<Matchs> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Played>(
      builder: (BuildContext context, value, Widget? widget) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text('Vitórias'),
                BoxCard(
                    insideWidget: Center(child: Text(value.victory.toString())),
                    width: MediaQuery.of(context).size.width * 0.18),
              ],
            ),
            Column(children: [
              const Text('Empates'),
              BoxCard(
                  insideWidget: Center(child: Text(value.draw.toString())),
                  width: MediaQuery.of(context).size.width * 0.18),
            ]),
            Column(children: [
              const Text('Derrotas'),
              BoxCard(
                  insideWidget: Center(child: Text(value.defeat.toString())),
                  width: MediaQuery.of(context).size.width * 0.18),
            ]),
          ],
        );
      },
    );
  }
}
