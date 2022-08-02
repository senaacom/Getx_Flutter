import 'package:get/get.dart';

import '../../../features/crew/bindings/crew_binding.dart';
import '../../../features/crew/screens/crew_page.dart';
import '../../../features/home/bindings/home_binding.dart';
import '../../../features/home/screens/home_page.dart';
import '../../../features/marine/bindings/marine_bindings.dart';
import '../../../features/marine/screens/marine_page.dart';
import '../../../features/settings/bindings/settings_bindings.dart';
import '../../../features/settings/screens/settings_page.dart';
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
    ),
    GetPage(
      name: Routes.CREW,
      page: () => CrewPage(),
      binding: CrewBinding(),
    ),
    GetPage(
      name: Routes.MARINE,
      page: () => MarinePage(),
      binding: MarineBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => SettingsPage(),
      binding: SettingsBindings(),
    ),
  ];
}
