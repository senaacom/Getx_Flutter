import 'package:get/get.dart';

import '../controller/crew_controller.dart';

class CrewBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      CrewController(),
    );
  }
}
