import 'package:get/get.dart';

import 'sell_controller.dart';

class SellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellController>(
      () => SellController(),
    );
  }
}
