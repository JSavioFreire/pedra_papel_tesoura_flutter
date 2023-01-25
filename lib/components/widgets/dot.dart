import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final Color color;
  const Dot({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: color),
      ),
    );
  }
}
