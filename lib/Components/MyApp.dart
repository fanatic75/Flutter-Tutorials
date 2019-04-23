import "package:flutter/material.dart";
import 'package:http/http.dart' show get;
import "./image_model.dart";
import "dart:convert";
import "./image_list.dart";
class MyAppState extends State<MyApp> {
  int _counter=0;
  List<ImageModel> images = [];
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Let's see the images."),
        ),
        floatingActionButton: floatingButton(),
        body: ImageList(images),
      )
    );
  }

  void fetchImage() async{
     _counter += 1; 
    final response= await get("https://jsonplaceholder.typicode.com/photos/$_counter");
    final imageModel= new ImageModel.fromJson(json.decode(response.body));
    setState(() {
     images.add(imageModel); 
    });

  }

  Widget floatingButton(){
    return FloatingActionButton(
      onPressed: fetchImage,
      child: Icon(Icons.add),
    );
  }

 
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
}