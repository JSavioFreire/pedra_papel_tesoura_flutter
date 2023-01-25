import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/components/buttons/button_play.dart';
import 'package:pedra_papel_tesoura/components/texts/law.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ButtonPlay(),
          Law(),
        ],
      ),
    );
  }
}
