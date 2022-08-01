import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/mutable/routes/app_pages.dart';
import 'core/mutable/translations/locale.dart';
import 'features/splash/bindings/splash_bindings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      navigatorKey: Get.key,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      initialBinding: SplashBindings(),
      getPages: AppPages.pages,
      title: 'Flutter Getx Project',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
