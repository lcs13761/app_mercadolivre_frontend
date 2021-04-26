import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'notifications_config_view.dart';
import 'notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    DrawerView().colorText("notifications");
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: DrawerView(),
      appBar: AppBar(
        title: Text("Notificações"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsConfigView()));
              },
              child: Icon(Icons.settings_outlined),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 30),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://png.pngtree.com/element_our/png/20181014/user-interface-icon-design-vector-png_125493.jpg"),
              fit: BoxFit.fill),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 23),
              child: Text(
                'Não há notificações',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).primaryColor),
              ),
            ),
            Container(

              child: Text(
                "Aproveite para conhece produtos \n\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b incríveis!",
                style: TextStyle(
                    color: Color.fromRGBO(180, 180, 180, 1),
                    fontSize: 18,
                    wordSpacing: 2,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
