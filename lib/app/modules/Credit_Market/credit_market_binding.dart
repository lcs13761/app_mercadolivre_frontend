import 'package:get/get.dart';

import 'credit_market_controller.dart';

class CreditMarketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreditMarketController>(
      () => CreditMarketController(),
    );
  }
}
