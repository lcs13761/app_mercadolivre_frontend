import 'package:facebook_app/main.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: <Widget>[
          FloatingSearchBar(
            hint: "Buscar em Mercado Livre",
            hintStyle: TextStyle(
              color: Colors.white54,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
            queryStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
            border: BorderSide.none,
            iconColor: Theme.of(context).primaryColor,
            backdropColor: Theme.of(context).backgroundColor,
            autocorrect: true,
            builder: (context, transition) {
              return Container();
            },
          )
        ],
      ),
    );
  }
}
