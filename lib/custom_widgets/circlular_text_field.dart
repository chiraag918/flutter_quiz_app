import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/styled_text.dart';

class CircularTextField extends StatelessWidget {
  const CircularTextField(
      {super.key,
      required this.circleRadius,
      this.text = "",
      this.backgroundColor = Colors.white,
      this.textColor = Colors.black});

  final double circleRadius;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(context) {
    return Container(
      width: circleRadius * 2,
      height: circleRadius * 2,
      margin: const EdgeInsets.only(right: 20, left: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: StyledText(
        text,
        fontSize: circleRadius,
        fontColor: Colors.black,
        googleFont: true,
      ),
    );
  }
}
