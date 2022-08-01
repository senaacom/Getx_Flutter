import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color textColor;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final double? fontSize;

  const CustomText({
    Key? key,
    this.text,
    required this.textColor,
    this.textAlign,
    required this.fontWeight,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text == null ? ' ' : text!.tr,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
