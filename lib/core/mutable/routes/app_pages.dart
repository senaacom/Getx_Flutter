import 'package:get/get.dart';

import '../../../features/home/bindings/home_binding.dart';
import '../../../features/home/screens/home_page.dart';
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
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    )
  ];
}
