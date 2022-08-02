import 'package:get/instance_manager.dart';

import '../controller/settings_controller.dart';

class SettingsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SettingsController());
  }
}
