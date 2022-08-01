// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/core/mutable/theme/colors.dart';
import 'package:getx_flutter/core/mutable/widgets/text/text.dart';

class CustomListTile extends StatelessWidget {
  void Function()? onTap;
  String text;
  double fontSize;
  CustomListTile({
    Key? key,
    this.onTap,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomText(
        text: text.tr,
        fontSize: fontSize,
        textColor: AppColors.lightBlue,
        fontWeight: FontWeight.w500,
      ),
      onTap: onTap,
    );
  }
}
