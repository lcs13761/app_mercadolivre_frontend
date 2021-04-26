import 'package:facebook_app/app/controller/connection.dart';
import 'package:facebook_app/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await authenticationUser();
  }

  Future<void> authenticationUser() async {
    if (FirebaseAuth.instance.currentUser != null) {
      await Connection().userInitialized();
    }

    await 1.delay();
    Get.offNamed(Routes.HOME);
  }
}
