import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'credit_market_controller.dart';

class CreditMarketView extends GetView<CreditMarketController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CreditMarketView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CreditMarketView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
