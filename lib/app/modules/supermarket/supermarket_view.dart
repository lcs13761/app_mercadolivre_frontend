import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'supermarket_controller.dart';

class SupermarketView extends GetView<SupermarketController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text(
                  "Supermercado",
                  style: TextStyle(
                    color: Color.fromRGBO(247, 247, 247, 1),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.search),
                        )),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: GestureDetector(
                        onTap: (){
                        },
                        child: Icon(Icons.shopping_cart_outlined),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.white),
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.add_location,
                        color: Color.fromRGBO(247, 247, 247, 1),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        "Informe seu CEP",
                        style: TextStyle(
                            color: Color.fromRGBO(247, 247, 247, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w300
                        ),
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
              )
            ],
          ),
        ),

      ),
    );
  }
}
