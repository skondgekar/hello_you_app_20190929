import 'package:flutter/material.dart';

void main() => runApp(MyApp())

class MyApp extends StatelessWidget{
  final appTitle = "Hello You App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(
        title: appTitle
      )
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}