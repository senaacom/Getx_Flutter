import 'package:get/instance_manager.dart';

import '../controller/marine_controller.dart';

class MarineBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MarineController());
  }
}
