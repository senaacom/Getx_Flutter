import 'package:flutter/material.dart';

import '../../../../features/settings/controller/settings_controller.dart';
import '../../theme/colors.dart';
import '../text/text.dart';

buildLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (builder) {
      return AlertDialog(
        title: CustomText(
          textAlign: TextAlign.center,
          text: 'Choose Your Language',
          fontWeight: FontWeight.bold,
          textColor: AppColors.softBlue,
          fontSize: 18,
        ),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  child: CustomText(
                    textAlign: TextAlign.center,
                    text: SettingsController().locale[index]['name'],
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.gray,
                    fontSize: 15,
                  ),
                  onTap: () {
                    SettingsController().updateLanguage(
                        SettingsController().locale[index]['locale'], context);
                    print(SettingsController().locale[index]['locale']);
                  },
                );
              },
              separatorBuilder: (context, index) => Divider(
                    color: AppColors.gray,
                  ),
              itemCount: 2),
        ),
      );
    },
  );
}
