import "package:flutter/material.dart";
import "./alert.dart";
class MyAppState extends State<MyApp> {
  bool _alert = false;
  int _counter=0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Let's see the images."),
        ),
        floatingActionButton: floatingButton(),
        body: Alert(visible: _alert, alertData: "Hello",),
      )
    );
  }

  Widget floatingButton(){
    return FloatingActionButton(
      onPressed: ()=>setState(()=>{_alert=true}),
      child: Icon(Icons.add),
    );
  }

 
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
}