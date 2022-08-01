import 'package:get/instance_manager.dart';

import '../controller/splash_controller.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      SplashController(),
    );
  }
}
