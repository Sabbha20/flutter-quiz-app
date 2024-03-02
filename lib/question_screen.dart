import 'package:flutter/material.dart';
import 'package:quiz_app/answers_widget.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final QuizQuestion quiz_question = questions[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quiz_question.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ...quiz_question.shuffleAnswers().map(
                (e) => AnswerButton(
                  text: e,
                  onClicked: () {},
                ),
              ),
        ],
      ),
    );
  }
}
