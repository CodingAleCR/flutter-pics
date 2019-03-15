import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageItem extends StatelessWidget {
  final ImageModel image;

  const ImageItem(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
      ),
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: 8.0,
            ),
            child: Image.network(image.url),
          ),
          Text(image.title)
        ],
      ),
    );
  }
}
