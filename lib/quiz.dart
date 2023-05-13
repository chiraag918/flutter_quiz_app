import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom_widgets/gradient_container.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/screens/questions_screen.dart';
import 'package:flutter_quiz_app/screens/results_screen.dart';
import 'package:flutter_quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      redirectToResultsScreen();
    }
  }

  void redirectToQuestions() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  void redirectToResultsScreen() {
    setState(() {
      activeScreen = ResultsScreen(
          selectedAnswers: selectedAnswers,
          redirectToStart: redirectToQuestions);
      selectedAnswers = [];
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(redirectToQuestions);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: const Color.fromARGB(255, 31, 0, 63),
          color2: const Color.fromARGB(255, 125, 42, 170),
          children: activeScreen,
        ),
      ),
    );
  }
}
