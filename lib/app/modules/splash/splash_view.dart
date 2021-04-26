import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/splash2.jpg", fit: BoxFit.fill,
    );
  }
}
