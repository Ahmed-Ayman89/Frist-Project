import 'package:flutter/material.dart';
import 'package:flutter_application_1/Quiz.dart';

import 'package:flutter_application_1/summary.dart';

import 'data/question.dart';

class Result extends StatelessWidget {
  const Result(
    this.selectedAnswer, {
    super.key,
  });

  final List<String> selectedAnswer;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> Summary = [];
    for (var i = 0; i < selectedAnswer.length; i++) {
      Summary.add({
        'Question_index': i,
        'Question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswer[i],
      });
    }
    return Summary;
  }

  @override
  Widget build(BuildContext context) {
    final SummaryData = getSummaryData();
    var numOfCorrectAnswer = 0;
    for (var i = 0; i < selectedAnswer.length; i++) {
      if (SummaryData[i]['user_answer'] == SummaryData[i]['correct_answer']) ;
      numOfCorrectAnswer++;
    }
    return ListView(
      children: [
        Text(
          'You answered $numOfCorrectAnswer out of ${questions.length} Question correctly!',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        Summary(getSummaryData()),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
            icon: const Icon(Icons.restart_alt_outlined),
            onPressed:(){},
            label: const Text(
              'Restart Quiz!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ))
      ],
    );
  }
}
