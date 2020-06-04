import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Layout',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        //color: Colors.blue,
        //constraints: BoxConstraints.expand(),
        width: 200,
        height: 200,
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        //transform: Matrix4.rotationZ(0.5),
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
                color: Colors.black, width: 2.0, style: BorderStyle.solid),
            //borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4.0,
                spreadRadius: 2.0
              )
            ],
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
              Colors.blue,
              Colors.white
            ]),
            shape: BoxShape.circle
          ),
        child: Text("Flutter Essentials",
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    ));
  }
}
