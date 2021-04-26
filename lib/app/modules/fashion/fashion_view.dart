import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'fashion_controller.dart';

class FashionView extends GetView<FashionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text(
                "Calçados, Roupas e Bolsas",
                style: TextStyle(
                    color: Colors.white, fontSize: 16, letterSpacing: 0.4),
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 28,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
