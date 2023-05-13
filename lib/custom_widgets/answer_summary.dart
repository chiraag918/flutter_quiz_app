import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/circlular_text_field.dart';
import 'package:flutter_quiz_app/custom_widgets/styled_text.dart';

class AnswerSummary extends StatelessWidget {
  const AnswerSummary({super.key, required this.answerSummary});

  final Map<String, Object> answerSummary;

  @override
  Widget build(context) {
    return Column(
      children: [
        StyledText(
          'You have correctly answered questions ${answerSummary['noCorrectlyAnswered']} out of ${answerSummary['noQuestions']}',
          fontSize: 22,
          fontColor: const Color.fromARGB(255, 247, 157, 255),
          googleFont: true,
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 300,
          child: SingleChildScrollView(
            child: Column(children: [
              ...(answerSummary['summaryList'] as List<Map<String, Object>>)
                  .map((summaryItem) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularTextField(
                      circleRadius: 14,
                      backgroundColor: summaryItem["answeredCorrectly"] as bool
                          ? const Color.fromARGB(255, 73, 222, 255)
                          : const Color.fromARGB(255, 243, 114, 254),
                      text:
                          ((summaryItem['question_idx'] as int) + 1).toString(),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          StyledText(
                            summaryItem['question'] as String,
                            fontSize: 16,
                            textAlign: TextAlign.start,
                            googleFont: true,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          StyledText(
                            summaryItem['correctAnswer'] as String,
                            fontSize: 14,
                            fontColor: const Color.fromARGB(255, 73, 222, 255),
                            textAlign: TextAlign.start,
                          ),
                          StyledText(
                            summaryItem['selectedAnswer'] as String,
                            fontSize: 14,
                            fontColor: const Color.fromARGB(255, 243, 114, 254),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              })
            ]),
          ),
        )
      ],
    );
  }
}
