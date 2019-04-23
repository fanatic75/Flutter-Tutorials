import "package:flutter/material.dart";
import "./image_model.dart";
class ImageList extends StatelessWidget{
  final List<ImageModel> images;
  ImageList(this.images);

  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: images.length,
      itemBuilder:  (context, int index)  {
       return buildImage(index);
      },
    );
  }

  Widget buildImage(int index){
    return Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
             
              Padding(padding: EdgeInsets.only(
                bottom:10.0
                
                ),
                child:  Image.network(images[index].url),),
              Text(images[index].title)
            ],
          ),
          padding:EdgeInsets.all(20.0) ,
        );
  }
 
}

