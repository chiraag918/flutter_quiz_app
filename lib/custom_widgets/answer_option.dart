import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/styled_text.dart';

class AnswerOption extends StatelessWidget {
  const AnswerOption(
      {super.key, required this.optionLabel, required this.onPress});

  final String optionLabel;
  final void Function() onPress;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: Color.fromARGB(255, 50, 0, 96),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onPress,
      child: StyledText(
        optionLabel,
        fontSize: 15,
      ),
    );
  }
}
