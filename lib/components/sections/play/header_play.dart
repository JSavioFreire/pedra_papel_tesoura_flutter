import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

class HeaderPlay extends StatelessWidget {
  const HeaderPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ThemeColors.greyDark,
        padding: const EdgeInsets.fromLTRB(2, 25, 2, 0),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            Text(
              'Tela de jogo',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ));
  }
}
