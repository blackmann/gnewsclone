import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  CircleImage(
    this.imageProvider, {
    this.radius = 10,
  });

  final int radius;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    double width = (radius * 2).toDouble();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.fill,
              )),
        )
      ],
    );
  }
}
