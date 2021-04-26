import 'package:get/get.dart';

import 'official_stores_controller.dart';

class OfficialStoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfficialStoresController>(
      () => OfficialStoresController(),
    );
  }
}
