import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
        height: 80,
        color: ThemeColors.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Janken-pon',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ));
  }
}
