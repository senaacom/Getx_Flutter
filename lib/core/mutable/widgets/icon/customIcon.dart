// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class CustomIcon extends StatelessWidget {
  IconData? icon;
  double? size;
  CustomIcon({
    Key? key,
    this.icon,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: AppColors.white,
    );
  }
}
