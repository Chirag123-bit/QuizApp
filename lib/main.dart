// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  bool remain = true;
  var questions = [
    {
      "question": "What is your fav color?",
      "answers": ["Red", "Green", "Blue", "Yellow"]
    },
    {
      "question": "What is your fav animal?",
      "answers": ["Dog", "Cat", "Horse", "Lion"]
    },
  ];
  void answerQuestion() {
    print('Option Selected');
    if (questionIndex < questions.length - 1) {
      questionIndex++;
    } else {
      remain = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Map col = questions[questionIndex];
    String questionText = col['question'];
    List answers = col['answers'];
    List<Widget> ans = [];
    for (int i = 0; i < answers.length; i++) {
      ans.add(Answer(answers[i], answerQuestion));
    }
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("My First App"),
      ),
      body: remain == true
          ? Column(
              children: [Question(questionText), ...ans],
            )
          : Center(
              child: Text('Quiz Completed'),
            ),
    ));
  }
}
