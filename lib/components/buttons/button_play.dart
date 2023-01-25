import 'package:flutter/material.dart';

class ButtonPlay extends StatelessWidget {
  const ButtonPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/play');
        },
        child: Text('Jogar', style: Theme.of(context).textTheme.titleMedium));
  }
}
