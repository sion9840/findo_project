import 'package:findo_project/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor _main_color = const MaterialColor(
    0xFF4263eb,
    const <int, Color>{
      50: const Color(0xFF4263eb),
      100: const Color(0xFF4263eb),
      200: const Color(0xFF4263eb),
      300: const Color(0xFF4263eb),
      400: const Color(0xFF4263eb),
      500: const Color(0xFF4263eb),
      600: const Color(0xFF4263eb),
      700: const Color(0xFF4263eb),
      800: const Color(0xFF4263eb),
      900: const Color(0xFF4263eb),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: _main_color,
        primaryColor: _main_color,
        primaryColorLight: const Color(0xFFf8f9fa),
        scaffoldBackgroundColor: _main_color,
        textTheme: TextTheme(
          title: TextStyle(
            color: const Color(0xFFf8f9fa),
            fontSize: 32.0,
          ),
        ),
      ),
      home: MainPage(),
    );
  }
}