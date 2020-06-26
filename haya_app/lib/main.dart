

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade400,
        body:Column(
             mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

         CircleAvatar(
           radius: 50,
              backgroundImage:AssetImage('assets/image/haya.jpg'),
         )
         ,Text("Haya AL-Natsheh" ,style: TextStyle(fontFamily: 'Lobster',color: Colors.white,fontSize: 25),),
            Text("Flutter Developer",style: TextStyle(fontStyle:FontStyle.normal,fontSize:20,color:Colors.white),),
           Card(
             margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
             color: Colors.white,
             child:ListTile(
               leading: Icon(Icons.phone,color: Colors.teal,),
               title: Text("+962*******"),
             )
             ),

            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                color: Colors.white,
                child:ListTile(
                  leading: Icon(Icons.email,color: Colors.teal,),
                  title: Text("haya@gmail.com"),
            ),
            )],
        )
        ),
      );




  }
}
// Row(
//               children: <Widget>[
//                 Icon(Icons.phone,color: Colors.teal,),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text("+962790850054",)
//               ],
//             ),
//           ),