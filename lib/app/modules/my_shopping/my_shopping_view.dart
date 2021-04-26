import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'my_shopping_controller.dart';

class MyShoppingView extends GetView<MyShoppingController> {
  @override
  Widget build(BuildContext context) {
    DrawerView().colorText("my_Shop");
    return Scaffold(
     backgroundColor: Theme.of(context).backgroundColor,
      drawer: Container(
        width: 270,
        child: DrawerView(),
      ),
      appBar: AppBar(
        title: Text("Minha compras"),
      ),

    );
  }



}
