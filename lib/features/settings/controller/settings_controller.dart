import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'TURKISH', 'locale': Locale('tr', 'TR')},
  ];

  updateLanguage(Locale locale, BuildContext context) {
    Get.updateLocale(locale);
    Navigator.pop(context);
  }
}
