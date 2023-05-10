import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,
      {super.key, this.fontColor = Colors.white, required this.fontSize});

  final String text;
  final Color fontColor;
  final double fontSize;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: fontColor, fontSize: fontSize),
    );
  }
}
