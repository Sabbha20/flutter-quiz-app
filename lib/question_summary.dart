import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: data['user_answer'] == data['correct_answer']
                            ? Colors.tealAccent
                            : Colors.redAccent,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['question'] as String,
                              style: const TextStyle(
                                  color: Color(0xC2F5ECFC),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              data['user_answer'] as String,
                              style: const TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(data['correct_answer'] as String,
                                style: const TextStyle(
                                  color: Colors.lightGreen,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
