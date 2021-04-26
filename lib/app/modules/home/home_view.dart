import 'package:facebook_app/app/modules/search/search_view.dart';
import 'package:facebook_app/app/routes/app_pages.dart';
import 'package:facebook_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import '../drawe/drawer.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 1)),
        builder: (context, AsyncSnapshot snapshot) {
          return DefaultTabController(
            length: 1,
            child: Scaffold(
              backgroundColor: Theme.of(context).backgroundColor,
              drawer: DrawerView(),
              appBar: AppBar(
                centerTitle: true,
                title: Container(
                  alignment: Alignment.centerLeft,
                  width: 290,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: backgroundContainer,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      overlayColor: MaterialStateProperty.all<Color>(
                        Colors.transparent,
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.SEARCH);
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.search_outlined,
                            color: Colors.white70,
                            size: 20,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "Buscar no Mercado Livre",
                            style:
                                TextStyle(color: Colors.white54, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        child: Icon(Icons.shopping_cart_outlined),
                      ))
                ],
                iconTheme: IconThemeData(color: Colors.white),
                toolbarHeight: 90,
                bottom: TabBar(
                  indicatorColor: Colors.transparent,
                  tabs: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.add_location,
                              color: Color.fromRGBO(247, 247, 247, 1),
                              size: 19,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3),
                            child: Text(
                              "Informe seu CEP",
                              style: TextStyle(
                                  color: Color.fromRGBO(247, 247, 247, 1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: Color.fromRGBO(247, 247, 247, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
// NestedScrollView(
// headerSliverBuilder: (BuildContext context,
//     bool innerBoxIsScrolled) {
// return <Widget>[
// SliverAppBar(
// title: new Text("test"),
// backgroundColor: Color.fromRGBO(36, 37, 39, 1),
// iconTheme: IconThemeData(color: Colors.white),
// toolbarHeight: 70,
// ),
// ];
// },
// body: Container(
// child: ListView(
// children: <Widget>[
// Container(
// child: test()
// ),
// Container(
// child: test()
// ),
// Container(
// child: test()
// ),
// Container(
// child: test()
// ),
// ],
// ),
// ),
// ),
