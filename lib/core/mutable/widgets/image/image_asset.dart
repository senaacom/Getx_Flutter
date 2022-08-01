import 'package:flutter/material.dart';

@immutable
class ImageAsset extends StatelessWidget {
  String image;
  ImageAsset({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
