import 'package:get/get.dart';

import 'supermarket_controller.dart';

class SupermarketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupermarketController>(
      () => SupermarketController(),
    );
  }
}
