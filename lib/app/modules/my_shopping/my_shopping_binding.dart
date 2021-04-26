import 'package:get/get.dart';

import 'my_shopping_controller.dart';

class MyShoppingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyShoppingController>(
      () => MyShoppingController(),
    );
  }
}
