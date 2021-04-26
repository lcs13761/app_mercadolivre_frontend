import 'package:get/get.dart';

class AbstractController extends GetxController {
  //TODO: Implement AbstractController

  var values = "Hoje".obs;

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
