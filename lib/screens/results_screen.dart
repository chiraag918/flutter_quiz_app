import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/answer_summary.dart';
import 'package:flutter_quiz_app/custom_widgets/styled_text.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.selectedAnswers,
      required this.redirectToStart});

  final List<String> selectedAnswers;
  final void Function() redirectToStart;

  Map<String, Object> getSummaryData() {
    final List<Map<String, Object>> summaryList = [];
    int correctAnswersCount = 0;

    for (int i = 0; i < selectedAnswers.length; i++) {
      bool answeredCorrectly = false;

      if (selectedAnswers[i] == questions[i].answers[0]) {
        correctAnswersCount++;
        answeredCorrectly = true;
      }

      summaryList.add({
        "question_idx": i,
        "question": questions[i].question,
        "correctAnswer": questions[i].answers[0],
        "selectedAnswer": selectedAnswers[i],
        "answeredCorrectly": answeredCorrectly,
      });
    }

    final summaryData = {
      "noCorrectlyAnswered": correctAnswersCount,
      "noQuestions": selectedAnswers.length,
      "summaryList": summaryList,
    };

    return summaryData;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnswerSummary(answerSummary: getSummaryData()),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: redirectToStart,
              icon: Container(
                transform: Matrix4.rotationY(3.14),
                transformAlignment: Alignment.center,
                child: const Icon(
                  Icons.replay,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              label: const StyledText("Retake Quiz", fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
