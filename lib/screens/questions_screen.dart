import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/answer_option.dart';
import 'package:flutter_quiz_app/custom_widgets/styled_text.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledText(currentQuestion.question, fontSize: 15),
          const SizedBox(
            height: 30,
          ),
          AnswerOption(optionLabel: currentQuestion.answers[0], onPress: () {}),
          AnswerOption(optionLabel: currentQuestion.answers[1], onPress: () {}),
          AnswerOption(optionLabel: currentQuestion.answers[2], onPress: () {}),
          AnswerOption(optionLabel: currentQuestion.answers[3], onPress: () {}),
        ],
      ),
    );
  }
}
