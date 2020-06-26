import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
          home: Scaffold(appBar: AppBar(title: Text("Student"),
      ),
      body: Column(
        children: <Widget>[
          Container(width:1000,height:100,
            child: Card(child:Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              FlatButton(onPressed: () {  },
              child: Icon(Icons.apps)),
              FlatButton(onPressed: () {  },
              child: Icon(Icons.list)),
              FlatButton(onPressed: () {  },
              child: Icon(Icons.adb)),
              FlatButton(onPressed: () {  },
              child: Icon(Icons.add),
               ), 
                Expanded(
              child: FlatButton(onPressed: () {  },
              child: Icon(Icons.add),
                  ),
                )],
            ),
            elevation: 20,
          ),
          ),
        ],
      ),
      ),
    );
  }



}
