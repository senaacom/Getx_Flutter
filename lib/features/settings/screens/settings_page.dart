import 'package:flutter/material.dart';

import '../../../core/mutable/theme/colors.dart';
import '../../../core/mutable/widgets/dialog/languageDialog.dart';
import '../../../core/mutable/widgets/icon/customIcon.dart';
import '../../../core/mutable/widgets/text/text.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _languageCard(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.darkBlue,
      elevation: 0,
      title: _appBarTitle(),
    );
  }

  CustomText _appBarTitle() {
    return const CustomText(
      textAlign: TextAlign.center,
      text: 'Settings',
      fontWeight: FontWeight.bold,
      textColor: AppColors.white,
      fontSize: 18,
    );
  }

  Card _languageCard(BuildContext context) {
    return Card(
      color: AppColors.softBlue,
      child: InkWell(
        onTap: () => buildLanguageDialog(
          context,
        ),
        child: _languageListTile(),
      ),
    );
  }

  ListTile _languageListTile() {
    return ListTile(
      leading: _listTileIcon(),
      title: _listTileTitle(),
    );
  }

  CustomIcon _listTileIcon() {
    return CustomIcon(
      icon: Icons.language,
      size: kToolbarHeight * 0.6,
    );
  }

  CustomText _listTileTitle() {
    return CustomText(
      text: 'Languages',
      fontWeight: FontWeight.bold,
      textColor: AppColors.white,
      fontSize: 15,
    );
  }
}
