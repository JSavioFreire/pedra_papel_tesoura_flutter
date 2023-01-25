import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/components/widgets/box_card.dart';
import 'package:pedra_papel_tesoura/components/widgets/dot.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

class Law extends StatelessWidget {
  const Law({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxCard(
      width: MediaQuery.of(context).size.width * 0.8,
      insideWidget: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Regras do jogo:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(children: [
          Dot(color: ThemeColors.colorDot['pink']),
          const Expanded(
            child: Text(
              'Pedra ganha da tesoura (amassando-a ou quebrando-a',
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Dot(
                color: ThemeColors.colorDot['green'],
              ),
              const Expanded(
                  child: Text('Tesoura ganha do papel (cortando-o)')),
            ],
          ),
        ),
        Row(
          children: [
            Dot(
              color: ThemeColors.colorDot['blue'],
            ),
            const Expanded(child: Text('Papel ganha da pedra (embrulhando-a)')),
          ],
        )
      ]),
    );
  }
}
