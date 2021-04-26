import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'bookmarks_controller.dart';

class BookmarksView extends GetView<BookmarksController> {
  @override
  Widget build(BuildContext context) {
    DrawerView().colorText("Bookmarks");
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(

          toolbarHeight: 100,
          title: Text('Favoritos'),
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 7, top: 7),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.add_location_outlined,
                        size: 18,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Endereço",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(Icons.search_outlined),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        drawer: Container(
          width: 270,
          child: DrawerView(),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              var a = "1";
              if (a.isNotEmpty) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Você ainda não adicionou os seus \nfavoritos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Descubra protudos incríveis!",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            wordSpacing: 2,
                            letterSpacing: 0.5),
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(),
                    Container(
                      child: Text(""),
                    ),
                    Container(
                      child: Text(""),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
