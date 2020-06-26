import 'package:flutter/material.dart';
import './qustion.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
 
}

class _myAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answeQuestion() {

setState(() {
  _questionIndex = _questionIndex + 1;
});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  var questions = [
      {
        'QuestionText':'What is your favourate color',
        'answer' : ['Black' ,'Blue','Red','Pink'],
      },
       {
        'QuestionText':'What is your favourate Name',
        'answer' : ['Ahmed' ,'Mohammed','Ali','Yaser'],
      },
       {
        'QuestionText':'What is your favourate Animal',
        'answer' : ['Dog' ,'Cat','Lion','monky'],
      }
  ];
   

    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("My First Application")),)
     , 
     body:_questionIndex <questions.length? Column(
       children: <Widget>[
        Question(
        questions[_questionIndex]['QuestionText']

        )
       , 
      ...( questions[_questionIndex]['answer'] as List<String> ).map((answer){
        return Answer(_answeQuestion , answer);

      }).toList()


       ],
     ) : Center(child:Text("You did it"),), ),
      
    );
  }
}