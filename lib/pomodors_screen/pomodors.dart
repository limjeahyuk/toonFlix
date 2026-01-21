import 'package:flutter/material.dart';
import 'package:toonflix/pomodors_screen/pomodors_home_screen.dart';

class pomodors extends StatelessWidget {
  const pomodors({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFE7626C),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Color(0xFF232B55)),
        ),
        cardColor: Color(0xFFF4EDDB),
      ),
      home: HomeScreen(),
    );
  }
}
