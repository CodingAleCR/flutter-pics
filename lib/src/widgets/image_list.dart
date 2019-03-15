import 'package:flutter/material.dart';
import 'package:pics/src/widgets/image_item.dart';
import 'package:pics/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget buildItem(BuildContext context, int index) {
    // return Image.network(images[index].url);
    return ImageItem(images[index]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: buildItem,
    );
  }
}
