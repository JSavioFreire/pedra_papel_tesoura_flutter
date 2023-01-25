import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

class LineBattleground extends StatelessWidget {
  const LineBattleground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 2,
      color: ThemeColors.secondary,
    );
  }
}
