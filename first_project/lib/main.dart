import 'package:flutter/material.dart';
import './random_words.dart';

void main() => runApp(MyApp());   // => for one line functions

class MyApp extends StatelessWidget{    //state is immutable
  @override
  Widget build(BuildContext context){
    return MaterialApp(
                      theme: ThemeData(primaryColor: Colors.blue[100]),   //primary color is the app logo color
                      home: RandomWords());
    }
}   