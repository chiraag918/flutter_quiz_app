import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
          const SizedBox(
            height: 70,
          ),
          const StyledText('Learn Flutter the fun way!',
              fontColor: Color.fromARGB(255, 210, 112, 255), fontSize: 24),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const StyledText('Start Quiz', fontSize: 18),
          )
        ],
      ),
    );
  }
}
