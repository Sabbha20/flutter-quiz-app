import 'package:flutter/material.dart';
import 'package:quiz_app/answers_widget.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.answerClicked});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();

  final void Function(String answer) answerClicked;
}

class _QuestionScreenState extends State<QuestionScreen> {
  var quiz_question_index = 0;

  void answerClicked(String selectedAnswer) {
    widget.answerClicked(selectedAnswer);
    setState(() {
      quiz_question_index++;
    });
  }

  // final QuizQuestion quiz_question = questions[0];

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
            questions[quiz_question_index].text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ...questions[quiz_question_index].shuffleAnswers().map(
                (e) => AnswerButton(
                  text: e,
                  onClicked: () {
                    answerClicked(e);
                  },
                ),
              ),
        ],
      ),
    );
  }
}
