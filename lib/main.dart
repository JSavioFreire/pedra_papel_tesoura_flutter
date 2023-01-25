import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/provider/provider_played.dart';
import 'package:pedra_papel_tesoura/screens/home/home.dart';
import 'package:pedra_papel_tesoura/screens/play/play_screen.dart';
import 'package:pedra_papel_tesoura/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: ((context) => Played()))],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/play': (context) => const PlayScreen()
      },
    );
  }
}
