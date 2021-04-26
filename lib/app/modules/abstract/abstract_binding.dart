import 'package:get/get.dart';

import 'abstract_controller.dart';

class AbstractBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AbstractController>(
      () => AbstractController(),
    );
  }
}
