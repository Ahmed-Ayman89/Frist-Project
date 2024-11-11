import 'package:flutter/material.dart';

class AnswerButten extends StatelessWidget {
  const AnswerButten(
      {super.key, required this.answerText, required this.onPressed});
  final String answerText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
        child: Text(answerText));
  }
}
