import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'historic_controller.dart';

class HistoricView extends GetView<HistoricController> {
  @override
  Widget build(BuildContext context) {
    DrawerView().colorText("Historic");
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('O seu histórico'),
      ),
      drawer: DrawerView(),
    );
  }
}
