import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizScreen, {super.key});

  final void Function() startQuizScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            width: 300.0,
            color: Color(0x86ffffff),
          ),
          const SizedBox(height: 60.0),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(fontSize: 20, color: Color(0xD5C9ADE0)),
          ),
          const SizedBox(height: 40.0),
          OutlinedButton.icon(
            icon: Icon(Icons.arrow_right_alt),
            onPressed: startQuizScreen,
            label: const Text("Start Quiz"),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          )
        ],
      ),
    );
  }
}
