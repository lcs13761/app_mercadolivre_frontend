import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'sell_controller.dart';

class SellView extends GetView<SellController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SellView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SellView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
