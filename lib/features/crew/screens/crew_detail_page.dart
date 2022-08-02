// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getx_flutter/core/mutable/widgets/card/expansionTileCard.dart';
import 'package:getx_flutter/core/mutable/widgets/divider/divider.dart';
import 'package:getx_flutter/core/mutable/widgets/text/two_information_text.dart';

import '../../../core/mutable/theme/colors.dart';
import '../../../core/mutable/widgets/text/text.dart';
import '../controller/crew_controller.dart';

class CrewDetailPage extends StatefulWidget {
  String firstName;
  String lastName;
  String title;
  String nationality;
  var certificates;

  CrewDetailPage(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.title,
      required this.certificates,
      required this.nationality})
      : super(key: key);

  @override
  State<CrewDetailPage> createState() => _CrewDetailPageState();
}

class _CrewDetailPageState extends State<CrewDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          _generalInformationCard(),
          _certificatesCard(),
        ],
      ),
    );
  }

  CustomExpansiyonTileCard _certificatesCard() {
    return CustomExpansiyonTileCard(
      baseColor: AppColors.softBlue,
      expandedColor: AppColors.orange,
      key: CrewController().firstKey,
      title: _certificatesTitle(),
      children: _certificatesChildren,
    );
  }

  CustomText _certificatesTitle() {
    return CustomText(
      text: 'Certificates',
      textColor: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }

  List<Widget> get _certificatesChildren {
    return <Widget>[
      _certificatesListView(),
    ];
  }

  ListView _certificatesListView() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.certificates.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CustomDivider(),
            _certificates(index),
            _size,
          ],
        );
      },
    );
  }

  Padding _certificates(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kTextTabBarHeight * 0.8,
      ),
      child: _certificatesText(index),
    );
  }

  CustomText _certificatesText(int index) {
    return CustomText(
      textAlign: TextAlign.center,
      text: (widget.certificates[index]),
      textColor: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.w300,
    );
  }

  CustomExpansiyonTileCard _generalInformationCard() {
    return CustomExpansiyonTileCard(
      baseColor: AppColors.softBlue,
      expandedColor: AppColors.orange,
      key: CrewController().firstKey,
      title: _cardTitle(),
      children: _children,
    );
  }

  CustomText _cardTitle() {
    return CustomText(
      text: ('General Information'),
      textColor: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }

  List<Widget> get _children {
    return <Widget>[
      _divider,
      _firstName(),
      _divider,
      _lastName(),
      _divider,
      _title(),
      _divider,
      _nationality(),
      _size,
    ];
  }

  TwoInformationText _firstName() {
    return TwoInformationText(
      firstText: 'First Name:',
      secondText: widget.firstName,
    );
  }

  TwoInformationText _lastName() {
    return TwoInformationText(
      firstText: 'Last Name:',
      secondText: widget.lastName,
    );
  }

  TwoInformationText _title() {
    return TwoInformationText(
      firstText: 'Title:',
      secondText: widget.title,
    );
  }

  TwoInformationText _nationality() {
    return TwoInformationText(
      firstText: 'Nationality:',
      secondText: widget.nationality,
    );
  }

  SizedBox get _size => SizedBox(
        height: kToolbarHeight / 5,
      );

  CustomDivider get _divider => CustomDivider();

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.darkBlue,
      elevation: 0,
      title: const CustomText(
        textAlign: TextAlign.center,
        text: 'Crew Detail Page',
        fontWeight: FontWeight.bold,
        textColor: AppColors.white,
        fontSize: 18,
      ),
    );
  }
}
