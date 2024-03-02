import 'package:flutter/material.dart';
import 'package:quiz_app/answers_widget.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Question 1345",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(
            text: "Answer 1",
            onClicked: () {},
          ),
          AnswerButton(
            text: "Answer 2",
            onClicked: () {},
          ),
          AnswerButton(
            text: "Answer 3",
            onClicked: () {},
          ),
        ],
      ),
    );
  }
}
