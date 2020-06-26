import 'package:flutter/material.dart';
import 'package:flutterpkm/Studnet/student_details.dart';
import 'dart:async';
import 'Students_List.dart';
import 'package:flutterpkm/models/student.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutterpkm/propatities/sql_helper.dart';

class StudentList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StudentState();
  }
}

class StudentState extends State<StudentList> {
  SQL_Helper helper = new SQL_Helper();
  List<Student>StudentList;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (StudentList == null) {
      StudentList = new List<Student>();
    }
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Students")),
      ),
      body: getStudentsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          transferpage();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getStudentsList() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
              leading: CircleAvatar(
                backgroundColor: isPassed(this.StudentList[position].pass),
                child: getIcon(this.StudentList[position].pass),
              ),
              title: Text(this.StudentList[position].name),
              subtitle: Text(this.StudentList[position].descruption +
                  this.StudentList[position].date),
              trailing:
              GestureDetector(
                child: Icon(
                  Icons.delete,
                  color: Colors.blueGrey,
                ),
                onTap: (){

                },
              ),
              onTap: () {
        transferpage();
        },
        ),);
      },
    );
  }

  void transferpage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return StudentDetails();
    }));
  }

  Color isPassed(int Value) {
    switch (Value) {
      case 1:
        return Colors.amber;
      case 2:
        return Colors.red;
        break;
      default:
        return Colors.amber;
    }
  }

  Icon getIcon(int Value) {
    switch (Value) {
      case 1:
        return Icon(Icons.check);
      case 2:
        return Icon(Icons.close);
        break;
      default:
        return Icon(Icons.check);
    }
  }

}
