import 'package:flutter/material.dart';

class Answer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Answerstate();
  }
}

class _Answerstate extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     child:
     Column(
       children: <Widget>[
         Text("What is your favorates animals")
         ,
         RaisedButton(
         color: Colors.blue,
         child: Text("Answer 1"),
         onPressed:null,

         ),
            RaisedButton(
         color: Colors.blue,
         child: Text("Answer 2"),
         onPressed:null,

         ),
            RaisedButton(
         color: Colors.blue,
         child: Text("Answer 3"),
         onPressed:null,

         ),
       ],
     ),

     );

    
  }
  
}