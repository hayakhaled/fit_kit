import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 
 final Function _questionhandel;
 final String _answerIndex;
 Answer(this._questionhandel , this._answerIndex);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(_answerIndex),
        onPressed: _questionhandel,
      ),
    );
  }
}