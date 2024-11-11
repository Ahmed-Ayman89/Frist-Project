import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Question.dart';
import 'package:flutter_application_1/data/question.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> slectedAnswer = [];
  Widget? activeSreen;

  void chooseAnswer(String answer) {
    log(answer);
    slectedAnswer.add(answer);

    if (slectedAnswer.length == questions.length) {
      setState(() {
        activeSreen = Result(slectedAnswer);
        slectedAnswer = [];
      });
    }
    log(slectedAnswer.toString());
  }

  @override
  void initState() {
    super.initState();
    activeSreen = home(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeSreen = Question(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff072e59),
              Color(0xff08619b),
            ])),
            child: activeSreen,
          ),
        ));
  }
}
