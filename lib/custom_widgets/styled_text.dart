import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
    this.fontColor = Colors.white,
    required this.fontSize,
    this.googleFont = false,
    this.textAlign = TextAlign.center,
  });

  final String text;
  final Color fontColor;
  final double fontSize;
  final bool googleFont;
  final TextAlign textAlign;

  @override
  Widget build(context) {
    return Text(
      text,
      style: googleFont
          ? GoogleFonts.lato(
              color: fontColor, fontSize: fontSize, fontWeight: FontWeight.bold)
          : TextStyle(color: fontColor, fontSize: fontSize),
      textAlign: textAlign,
    );
  }
}
