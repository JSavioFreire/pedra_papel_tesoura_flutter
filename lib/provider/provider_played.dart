import 'dart:math';
import 'package:flutter/material.dart';

class Played extends ChangeNotifier {
  String play = '???';
  String enemy = '???';
  String resultPlay = '???';
  int victory = 0;
  int defeat = 0;
  int draw = 0;

  void addPlayed(played) {
    play = played.toString();
    enemyPlay();
    enemy = enemyPlay();
    resultPlay = result(play, enemy);
    notifyListeners();
  }

  String enemyPlay() {
    var rng = Random();
    int rngNumber = rng.nextInt(3);
    if (rngNumber == 0) {
      return 'Pedra';
    } else if (rngNumber == 1) {
      return 'Papel';
    } else if (rngNumber == 2) {
      return 'Tesoura';
    } else {
      return 'Ocorreu um erro na jogada do oponente';
    }
  }

  String result(play, enemyPlay) {
    if (play == 'Pedra') {
      if (enemyPlay == 'Pedra') {
        draw++;
        return 'Empate';
      } else if (enemyPlay == 'Papel') {
        defeat++;
        return 'Derrota';
      } else if (enemyPlay == 'Tesoura') {
        victory++;
        return 'Vitória';
      }
    } else if (play == 'Papel') {
      if (enemyPlay == 'Pedra') {
        victory++;
        return 'Vitória';
      } else if (enemyPlay == 'Papel') {
        draw++;
        return 'Empate';
      } else if (enemyPlay == 'Tesoura') {
        defeat++;
        return 'Derrota';
      }
    } else if (play == 'Tesoura') {
      if (enemyPlay == 'Pedra') {
        defeat++;
        return 'Derrota';
      } else if (enemyPlay == 'Papel') {
        victory++;
        return 'Vitória';
      } else if (enemyPlay == 'Tesoura') {
        draw++;
        return 'Empate';
      }
    }

    return 'Ocorreu um erro no resultado';
  }
}
