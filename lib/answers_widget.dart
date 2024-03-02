import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.text, required this.onClicked});

  final String text;
  final void Function() onClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: onClicked,
          child: Text(
            text,
          ),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0x9E5611BE),
            ),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
