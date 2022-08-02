import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../text/text.dart';

void customDialog(
  BuildContext context, {
  required String content,
}) =>
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.symmetric(
            horizontal: kToolbarHeight * 0.4,
            vertical: kToolbarHeight * 0.4,
          ),
          buttonPadding: EdgeInsets.zero,
          title: CustomText(
            text: 'Certificates',
            textAlign: TextAlign.center,
            textColor: AppColors.lightBlue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          content: CustomText(
            text: content,
            textAlign: TextAlign.center,
            textColor: AppColors.gray,
            fontWeight: FontWeight.w300,
            fontSize: 15,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: CustomText(
                text: 'Close',
                textColor: AppColors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            )
          ],
        );
      },
    );
