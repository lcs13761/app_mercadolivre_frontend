import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../main.dart';
import 'category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Categorias'),
        centerTitle: true,
      ),
      drawer:DrawerView(),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 25, left: 15),
              child: Text(
                "Categorias",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: listCategory("Carros, Motos e Outros" , context,first: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.2),
              child: listCategory("Imóveis",context),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.2),
              child: listCategory("Serviços",context,last: true),
            ),
          ],
        ),
      ),
    );
  }

  Widget listCategory(String text,context, {first , last}) {
    if (first == true) {
      return Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.only(top: 3, bottom: 3, left: 5),
        decoration: BoxDecoration(
          color: backgroundContainer,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5),
          ),
        ),
        child: ListTile(
          onTap: () {},
          title: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
        ),
      );
    }
    if(last == true){
      return Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.only(top: 3, bottom: 3, left: 5),
        decoration: BoxDecoration(
          color: backgroundContainer,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        child: ListTile(
          onTap: () {},
          title: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      padding: EdgeInsets.only(top: 3, bottom: 3, left: 5),
      decoration: BoxDecoration(
        color:backgroundContainer,
      ),
      child: ListTile(
        onTap: () {},
        title: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
      ),
    );
  }
}
