import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/todo_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot){
        if(snapshot.hasError){
          return Scaffold(body:Center(child: Text("Error1")));   //Text(snapshot.error)
        }
        if(snapshot.connectionState == ConnectionState.waiting){
          return Scaffold(body:Center(child: Text("Error2")));
        }
      return MaterialApp(
          debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[900],
          primarySwatch: Colors.purple),
        home: TodoList()
      );
      }
    );
    //TodoList createState()=> TodoList();
  }
}