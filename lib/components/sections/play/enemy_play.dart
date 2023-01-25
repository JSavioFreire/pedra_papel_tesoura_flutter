import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/provider/provider_played.dart';
import 'package:provider/provider.dart';

class EnemyPlay extends StatefulWidget {
  const EnemyPlay({super.key});

  @override
  State<EnemyPlay> createState() => _EnemyPlayState();
}

class _EnemyPlayState extends State<EnemyPlay> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Column(
            children: [
              const Text('Seu Oponente jogou:'),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Consumer<Played>(
                  builder: (context, value, child) {
                    return Text(
                      value.enemy,
                      style: Theme.of(context).textTheme.titleLarge,
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
