import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF272A4E),
          foregroundColor: Colors.greenAccent,
          hoverColor: Colors.redAccent,
          splashColor: Colors.red,
          elevation: 20,
        ),
      ),
      home: Input_page(),
      routes: {
        //'resultpage': (context) => Results_page(),
        'inputpage': (context) => Input_page(),
      },
    );
  }
}
