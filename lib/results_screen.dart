import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(
      {super.key, required this.selectedAnswersList, required this.reStart});

  final void Function() reStart;

  List<String> selectedAnswersList;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedAnswersList.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswersList[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalAnswers = questions.length;
    final correctAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
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
              "You have selected $correctAnswers correct out of $totalAnswers answers.",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xC2EFDDF8),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 10,
            ),
            TextButton.icon(
              onPressed: reStart,
              icon: Icon(Icons.restart_alt_outlined),
              label: const Text("Restart again"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ));
  }
}
