// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback selectHandler;
  String text;

  Answer(this.text, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(text),
        color: Colors.blueAccent,
        onPressed: selectHandler,
        textColor: Colors.white,
      ),
    );
  }
}
