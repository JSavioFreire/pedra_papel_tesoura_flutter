import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

class TimerToPlay extends StatefulWidget {
  const TimerToPlay({super.key});

  @override
  State<TimerToPlay> createState() => _TimerToPlayState();
}

class _TimerToPlayState extends State<TimerToPlay> {
  double progress = 0;
  @override
  Widget build(BuildContext context) {
    void startTimer() {
      Timer.periodic(
        const Duration(milliseconds: 200),
        (Timer timer) => setState(
          () {
            if (progress >= 1) {
              timer.cancel();
            } else {
              progress += 0.0001;
            }
          },
        ),
      );
    }

    startTimer();
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: LinearProgressIndicator(
          color: ThemeColors.secondary,
          value: progress,
          minHeight: 10,
        ),
      ),
    );
  }
}
