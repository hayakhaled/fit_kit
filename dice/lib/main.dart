import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Dice> {
  int leftdices =1;
  int righttdices =1;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text("Dice")),
          backgroundColor: Colors.red,
        ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(onPressed:(){
              setState(() {
                leftdices =Random().nextInt(6)+1;
                righttdices =Random().nextInt(6)+1;
              });

            }
            , child:Image.asset('images/dice$leftdices.jpg')),
            FlatButton(onPressed:(){
              setState(() {
                righttdices =Random().nextInt(6)+1;
                leftdices =Random().nextInt(6)+1;
              });
            },
                child:Image.asset('images/dice$righttdices.jpg'))
          ],
        ),
      ),
      ),
    );
  }
}
