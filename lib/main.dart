import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/gradient_container.dart';
import 'package:flutter_quiz_app/custom_widgets/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: Color.fromARGB(255, 31, 0, 63),
          color2: Color.fromARGB(255, 125, 42, 170),
          children: StartScreen(),
        ),
      ),
    ),
  );
}
