import 'package:flutter/material.dart';

import '../../../core/mutable/theme/colors.dart';
import '../../../core/mutable/widgets/divider/divider.dart';
import '../../../core/mutable/widgets/image/backgroundImage.dart';
import '../../../core/mutable/widgets/image/cliprrect.dart';
import '../../../core/mutable/widgets/listTile/listTile.dart';
import '../../../core/mutable/widgets/text/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _backgroundImage(),
      drawer: _drawer(),
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: _drawerListView(),
    );
  }

  ListView _drawerListView() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _drawerHeader(),
        _contractsListTitle(),
        _divider,
        _crmListTile(),
        _divider,
        _vesselListTile(),
        _divider,
        _crewListTile(),
        _divider,
        _marineListTile(),
        _divider,
        _settingsListTile(),
        _divider
      ],
    );
  }

  CustomListTile _settingsListTile() {
    return CustomListTile(
      fontSize: 15,
      text: 'Settings',
      onTap: () {},
    );
  }

  CustomListTile _marineListTile() {
    return CustomListTile(
      fontSize: 15,
      text: 'Marine',
      onTap: () {},
    );
  }

  CustomListTile _crewListTile() {
    return CustomListTile(
      fontSize: 15,
      text: 'Crew',
      onTap: () {},
    );
  }

  CustomListTile _vesselListTile() {
    return CustomListTile(
      fontSize: 15,
      text: 'Vessel ',
    );
  }

  CustomListTile _crmListTile() {
    return CustomListTile(
      fontSize: 15,
      text: 'CRM',
    );
  }

  CustomDivider get _divider => CustomDivider();

  CustomListTile _contractsListTitle() {
    return CustomListTile(
      fontSize: 15,
      text: 'Contracts',
    );
  }

  DrawerHeader _drawerHeader() {
    return DrawerHeader(
      decoration: _boxDecoration(),
      child: _headerImage(),
    );
  }

  BoxDecoration _boxDecoration() {
    return const BoxDecoration(
      color: AppColors.darkBlue,
    );
  }

  Center _headerImage() {
    return Center(
      child: ClipRRectImage(
        text: "assets/images/ocean.jpeg",
      ),
    );
  }

  CustomDecorationImage _backgroundImage() {
    return CustomDecorationImage(
      image: "assets/images/digitallOcean.jpeg",
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.darkBlue,
      elevation: 0,
      title: CustomText(
        textAlign: TextAlign.center,
        text: 'Digitall Ocean',
        fontWeight: FontWeight.bold,
        textColor: AppColors.white,
        fontSize: 18,
      ),
    );
  }
}
