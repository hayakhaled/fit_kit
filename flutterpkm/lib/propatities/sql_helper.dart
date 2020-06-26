import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class SQL_Helper{

  static SQL_Helper dbHelper;
  static Database _database;

  SQL_Helper._createInstant();

  factory SQL_Helper (){

    if(dbHelper==null){
      dbHelper =SQL_Helper._createInstant();
    }
    return dbHelper;
  }

  String tableName= "Studnts_table";
  String _id= "id";
  String _name= "name";
  String _descruption="descruption";
  String _pass="pass";
  String _date="date";

  Future<Database> get database async{
    if(_database==null){
      _database =await initializedDatabase();
    }
    return _database;

  }

  Future<Database> initializedDatabase() async{ //to get database from direction
    Directory directory = await getApplicationDocumentsDirectory();
    String path =directory.path +"student.db";

  var studentDB= await  openDatabase(path ,version: 1, onCreate:createDatabase );
  return studentDB;
  }

  void createDatabase(Database db, int version) async{
   await db.execute("CREATE TABLE $tableName($_id INTEGER KEY AUTOINCREMENT,$_name Text,$_descruption Text"+
    "$_pass INTEGER, $_date TEXT");
  }
Future<List<Map<String,dynamic>>>getStudentMapList() async{
    Database db = await this.database;

    var result = await db.query(tableName, orderBy:"$_id ASC");
     return result;

}

}