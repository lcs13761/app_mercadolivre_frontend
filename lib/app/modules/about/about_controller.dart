import 'package:get/get.dart';

class AboutController extends GetxController {
  //TODO: Implement AboutController
  var name = "lucas";
    final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
