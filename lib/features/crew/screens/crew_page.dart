import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../core/mutable/theme/colors.dart';
import '../../../core/mutable/widgets/dialog/customDialog.dart';
import '../../../core/mutable/widgets/icon/customIcon.dart';
import '../../../core/mutable/widgets/text/text.dart';
import '../controller/crew_controller.dart';
import 'crew_detail_page.dart';

class CrewPage extends StatefulWidget {
  CrewPage({Key? key}) : super(key: key);

  @override
  State<CrewPage> createState() => _CrewPageState();
}

class _CrewPageState extends State<CrewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _appBar(),
      body: Padding(
        padding: _padding(),
        child: _listViewSeperated(),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.darkBlue,
      elevation: 0,
      title: const CustomText(
        textAlign: TextAlign.center,
        text: 'Crew Page',
        fontWeight: FontWeight.bold,
        textColor: AppColors.white,
        fontSize: 18,
      ),
    );
  }

  EdgeInsets _padding() {
    return const EdgeInsets.symmetric(
      horizontal: kToolbarHeight * 0.2,
      vertical: kToolbarHeight * 0.2,
    );
  }

  ListView _listViewSeperated() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          color: AppColors.softBlue,
          child: _crewListTile(index, context),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: kToolbarHeight * 0.10,
      ),
      itemCount: CrewController().crews.length,
    );
  }

  ListTile _crewListTile(int index, BuildContext context) {
    return ListTile(
      leading: _crewLeading(),
      trailing: _crewTrailing(index, context),
      subtitle: _crewSubtitle(index),
      title: _crewTitle(index),
    );
  }

  CustomIcon _crewLeading() {
    return CustomIcon(
      icon: Icons.anchor,
      size: kToolbarHeight * 0.7,
    );
  }

  Column _crewTrailing(int index, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () => Get.to(
            _crewDetailPage(index),
          ),
          child: _detailIcon(),
        ),
        InkWell(
          onTap: () => _showDialog(context, index),
          child: _certificateIcon(),
        ),
      ],
    );
  }

  CrewDetailPage _crewDetailPage(int index) {
    return CrewDetailPage(
      firstName: CrewController().crews[index]['name'],
      lastName: CrewController().crews[index]['surname'],
      nationality: CrewController().crews[index]['nationality'],
      title: CrewController().crews[index]['title'],
      certificates: CrewController().crews[index]['certificates'],
    );
  }

  CustomIcon _detailIcon() {
    return CustomIcon(
      icon: Icons.arrow_right,
      size: kToolbarHeight * 0.5,
    );
  }

  void _showDialog(BuildContext context, int index) {
    return customDialog(
      context,
      content: jsonEncode(CrewController().crews[index]['certificates'])
          .replaceAll("\"", "")
          .replaceAll(",", "\n")
          .replaceAll('[', '')
          .replaceAll(']', ''),
    );
  }

  CustomIcon _certificateIcon() {
    return CustomIcon(
      icon: Icons.workspace_premium,
      size: kToolbarHeight * 0.45,
    );
  }

  CustomText _crewSubtitle(int index) {
    return CustomText(
      text: (CrewController().crews[index]['title'] +
          ' / ' +
          CrewController().crews[index]['nationality']),
      textColor: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.w300,
    );
  }

  CustomText _crewTitle(int index) {
    return CustomText(
      text: CrewController().crews[index]['name'] +
          ' ' +
          CrewController().crews[index]['surname'],
      textColor: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }
}
