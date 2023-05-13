import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(153, 255, 255, 255),
          ),
          const SizedBox(
            height: 70,
          ),
          const StyledText(
            'Learn Flutter the fun way!',
            fontColor: Color.fromARGB(255, 210, 112, 255),
            fontSize: 24,
            googleFont: true,
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const StyledText('Start Quiz', fontSize: 18),
          )
        ],
      ),
    );
  }
}
