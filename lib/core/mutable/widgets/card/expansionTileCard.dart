// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class CustomExpansiyonTileCard extends StatelessWidget {
  Color? baseColor;
  Color? expandedColor;
  Widget title;
  List<Widget> children;
  Key? keyName;

  CustomExpansiyonTileCard({
    Key? key,
    this.baseColor,
    this.expandedColor,
    required this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kToolbarHeight / 5,
        vertical: kToolbarHeight / 6,
      ),
      child: ExpansionTileCard(
        baseColor: baseColor,
        expandedColor: expandedColor,
        key: keyName,
        title: title,
        children: children,
      ),
    );
  }
}
