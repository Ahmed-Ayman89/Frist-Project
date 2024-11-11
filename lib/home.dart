import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/quiz-logo.png',
          width: 250,
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: switchScreen,
            icon: const Icon(Icons.arrow_right_alt_rounded),
            label: const Text('Start Quiz'))
      ],
    );
  }
}
