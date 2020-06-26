import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(
  questionText
  ,style:TextStyle(fontSize:20, fontWeight:FontWeight.bold,
  color:Colors.purple) ,
  textAlign:TextAlign.center,
    );
  }
}