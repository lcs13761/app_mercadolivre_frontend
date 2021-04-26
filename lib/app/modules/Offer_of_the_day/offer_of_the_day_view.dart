import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'offer_of_the_day_controller.dart';

class OfferOfTheDayView extends GetView<OfferOfTheDayController> {
  @override
  Widget build(BuildContext context) {
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

      ),
    );
  }
}
