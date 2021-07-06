import 'package:flutter/material.dart';
import 'package:findo_project/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color _primary_color = const Color(0xff7950f2);

  final MaterialColor _primary_material_color = const MaterialColor(
    0xff7950f2,
    const <int, Color>{
      50: const Color(0xff7950f2),
      100: const Color(0xff7950f2),
      200: const Color(0xff7950f2),
      300: const Color(0xff7950f2),
      400: const Color(0xff7950f2),
      500: const Color(0xff7950f2),
      600: const Color(0xff7950f2),
      700: const Color(0xff7950f2),
      800: const Color(0xff7950f2),
      900: const Color(0xff7950f2),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: _primary_material_color,
        primaryColor: _primary_material_color,
        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 90,
            color: _primary_color,
            fontWeight: FontWeight.bold,
          ),
          subtitle: TextStyle(
            fontSize: 90,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MainPage(),
    );
  }
}