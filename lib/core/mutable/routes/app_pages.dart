import 'package:get/get.dart';

import '../../../features/splash/bindings/splash_bindings.dart';
import '../../../features/splash/screens/splash_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}
