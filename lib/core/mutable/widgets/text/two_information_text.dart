// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:getx_flutter/core/mutable/widgets/text/text.dart';

import '../../theme/colors.dart';

class TwoInformationText extends StatelessWidget {
  String firstText;
  String secondText;

  TwoInformationText({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kTextTabBarHeight * 0.4,
        vertical: kTextTabBarHeight * 0.2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: (firstText),
            textColor: AppColors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          CustomText(
            text: (secondText),
            textColor: AppColors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }
}
