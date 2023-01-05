
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageLoader extends StatelessWidget {
  const imageLoader({Key? key ,  required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return  Image.network(
        imageUrl,
      loadingBuilder:   (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            color: Colors.yellow,
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
         );

  }
}
