import 'package:flutter/material.dart';
import 'Studnet/Students_List.dart';
import 'Studnet/student_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: StudentList(),
    );
  }

}

