import 'package:calling_app/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Video Calling app'),
      ),
    body: HomePage(),
    ),
    );
}
}