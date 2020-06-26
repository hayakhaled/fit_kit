import 'package:flutter/material.dart';
import 'package:newproject/Answer.dart';


void main(MyApp)=> runApp(MyApp);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Question & Answer"),
      ),
    body: Answer(),
    
    );
  }
  
}