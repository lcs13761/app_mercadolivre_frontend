import 'package:facebook_app/app/controller/connection.dart';
import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../controller/connection.dart';

class HomeController extends GetxController {

  Map<String, dynamic> userValue;

  @override
  void onInit() async{
    super.onInit();
    DrawerView().colorText("home");

  }

}
