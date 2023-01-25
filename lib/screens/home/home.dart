import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/components/sections/home/body.dart';
import 'package:pedra_papel_tesoura/components/sections/home/header.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.backgroundColor,
        body: Column(
          children: const [Header(), BodyHome()],
        ));
  }
}
