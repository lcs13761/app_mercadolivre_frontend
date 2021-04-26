import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class MyAccountController extends GetxController {
  final FirebaseAuth validity = FirebaseAuth.instance;


  void checkUser(String router)async{
    await EasyLoading.show(
      status: "Carregando...",
      maskType: EasyLoadingMaskType.custom,
    );
    await 0.5.delay();
    await EasyLoading.dismiss();
      if(validity.currentUser == null){
        Get.toNamed("/login");

          // if(router == "/"){
          //
          // }else{
          //   Get.toNamed("/login");
          // }
      }else{
        //Get.toNamed(router);
      }
  }
}
