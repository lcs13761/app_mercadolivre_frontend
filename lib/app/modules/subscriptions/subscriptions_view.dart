import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'subscriptions_controller.dart';

class SubscriptionsView extends GetView<SubscriptionsController> {
  @override
  Widget build(BuildContext context) {
    DrawerView().colorText("Subscriptions");
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text('Assinaturas'),
        ),
        drawer: DrawerView(),
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20,top: 18,bottom: 18),
                margin: EdgeInsets.only(top: 40,bottom: 1),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(21, 21, 21, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: Text(
                  "Assinaturas que podem ser do seu interesse",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  fontSize: 18,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(21, 21, 21, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
