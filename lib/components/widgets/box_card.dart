import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

class BoxCard extends StatelessWidget {
  final Widget insideWidget;
  final double width;
  const BoxCard({required this.insideWidget, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ThemeColors.greyDark,
        ),
        child: insideWidget,
      ),
    );
  }
}
