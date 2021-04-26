import 'package:get/get.dart';

import 'offer_of_the_day_controller.dart';

class OfferOfTheDayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferOfTheDayController>(
      () => OfferOfTheDayController(),
    );
  }
}
