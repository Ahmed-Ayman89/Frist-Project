import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_butten.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/question.dart';

class Question extends StatefulWidget {
  const Question(this.onSlectedAnswer, {super.key});
  final void Function(String) onSlectedAnswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentQuestionIndex = 0;
  void answerQuestion(String answer) {
    widget.onSlectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final curruntQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            curruntQuestion.text,
            style: GoogleFonts.lato(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80,
          ),
          ...curruntQuestion.getShuffledAnswers().map(
            (e) {
              return Container(
                margin: const EdgeInsets.all(15),
                child: AnswerButten(
                  answerText: e,
                  onPressed: () {
                    answerQuestion(e);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
