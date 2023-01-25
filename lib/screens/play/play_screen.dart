import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/components/buttons/buttons_to_play.dart';
import 'package:pedra_papel_tesoura/components/sections/play/enemy_play.dart';
import 'package:pedra_papel_tesoura/components/sections/play/header_play.dart';
import 'package:pedra_papel_tesoura/components/sections/play/my_played.dart';
import 'package:pedra_papel_tesoura/components/widgets/box_card.dart';
import 'package:pedra_papel_tesoura/components/widgets/game_result.dart';
import 'package:pedra_papel_tesoura/components/widgets/line_battleground.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HeaderPlay(),
          Column(
            children: [
              const GameResult(),
              SizedBox(
                height: 400,
                child: BoxCard(
                    insideWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        EnemyPlay(),
                        LineBattleground(),
                        MyPlayed()
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 0.8),
              ),
            ],
          ),
          const ButtonToPlay()
        ],
      ),
    );
  }
}
