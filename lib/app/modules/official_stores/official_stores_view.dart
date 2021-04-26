import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:facebook_app/main.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'official_stores_controller.dart';

class OfficialStoresView extends GetView<OfficialStoresController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: DrawerView(),
      appBar: AppBar(
        title: Text('Lojas oficiais'),
        titleSpacing: 0,
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 15),
              decoration: BoxDecoration(
                color: backgroundContainer,
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    prefixIcon: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white54,
                      ),
                    ),
                    hintText: "Buscar Lojas oficiais",
                    hintStyle: TextStyle(color: Colors.white54)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, bottom: 5),
              child: Text(
                "#",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            listStores(),
          ],
        ),
      ),
    );
  }

  Widget listStores() {
    return Container(
      color: backgroundContainer,
      child: ListTile(
        title: Row(
          children: <Widget>[
            Container(),
            Container(
              child: Text(
                "123 Comprou",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
