// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ClipRRectImage extends StatelessWidget {
  String text;
  ClipRRectImage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kToolbarHeight * 2),
      child: Image.asset(
        text,
      ),
    );
  }
}
