import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  // APPROACH - 1
  // Widget? activeScreen;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  //
  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  // APPROACH - 2

  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = "start-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Widget screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchScreen)
        : QuestionScreen(
            answerClicked: chooseAnswer,
          );

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF370265), Color(0xD5571A79)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: //APPROACH - 1
              // activeScreen,
              //APPROACH - 2
              screenWidget,
        ),
      ),
    );
  }
}
