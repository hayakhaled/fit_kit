import 'package:flutter/material.dart';
import 'dart:async';
import 'Students_List.dart';
import 'package:flutterpkm/models/student.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutterpkm/propatities/sql_helper.dart';


class StudentDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Student_D();
  }
}

class Student_D extends State<StudentDetails>{
  static var _status={"Success","Failed"};
  TextEditingController studentName =new TextEditingController();
  TextEditingController studentDetails =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
       return Scaffold(
         appBar: AppBar(
           title:Text("Edit Students"),
         ),
         body:Padding(
           padding: EdgeInsets.only(top: 15, left: 10,right: 10),
           child:
           ListView(
             children: <Widget>[
                ListTile(
            title: DropdownButton(
              items: _status.map((String dropDownItem){
                return DropdownMenuItem<String> (
                  value: dropDownItem,
                  child:Text(dropDownItem),
                );
              }).toList(),
              style: textStyle,
              value: 'Success',
              onChanged: (selectedItem){
                setState(() {

                });
              },

            ),

           ),
               Padding(
                 padding:EdgeInsets.only(top: 15, bottom: 15),
                 child: TextField(
                   controller: studentName,
                   style: textStyle,
                   onChanged:(value){

                   },
                   decoration:InputDecoration(
                       labelText: "Name",
                       labelStyle: textStyle,
                       border:OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       )
                   ),
                 ),

               ),
               Padding(
                 padding:EdgeInsets.only(top: 15, bottom: 15),
                 child: TextField(
                   controller: studentDetails,
                   style: textStyle,
                   onChanged:(value){

                   },
                   decoration:InputDecoration(
                       labelText: "Description",
                       labelStyle: textStyle,
                       border:OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       )
                   ),
                 ),

               ),
                 Row(children: <Widget>[
                   Expanded( child:RaisedButton(
                     child: Text("Save",textScaleFactor: 1.5),
                     color: Colors.blueAccent,
                     textColor: Colors.white,
                     onPressed: (){

                     },
                   ),

                   ),
                   Container(width:5.0,),
                   Expanded( child:RaisedButton(
                     child: Text("Delete",textScaleFactor: 1.5,),
                     color: Colors.blueAccent,
                     textColor: Colors.white,
                     onPressed: (){

                     },
                   ),

                   ), ],

                 )


             ],
           ),


         ),

       );
  }

}