import "package:flutter/material.dart";
class Alert extends StatefulWidget{
  final bool visible;
  final String alertData;
  Alert({this.visible,this.alertData});
  AlertState createState () => AlertState(visible:this.visible,alertData:this.alertData);
}

class AlertState extends State<Alert>{
  bool visible;
  String alertData;
  AlertState({this.visible,this.alertData});
  @override
  Widget build(BuildContext context) {
    return (
      visible==true?AlertDialog(title: Text("$alertData"),actions: <Widget>[FlatButton(onPressed: ()=>setState(()=>{visible=false}),child:Text("Okay"),)],):Container()
    );
  }
}