import 'package:flutter/material.dart';
import 'package:findo_project/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.deepOrange,
        backgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 36,
            color: Colors.white
          ),
          headline2: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      home: MainPage(),
    );
  }
}