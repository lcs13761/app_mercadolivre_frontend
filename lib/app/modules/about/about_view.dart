import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'Sobre Mercado Livre',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              height: 110,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/logo.png")),
              ),
            ),
            Container(
              child: Text(
                "Mercado Livre Mobile para Android",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
            Container(
              child: Text(
                "\n10.154.2",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Text(
                "Copyright  1999-2021 Mercado Kubre Inc.",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            Container(
              child: Text(
                "or its affiliates",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Av. das Nações Unidas, n°3.003, Bonfin, Osasco/SP-CEP 06233-903",
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 12),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 45, left: 15),
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  child: Text(
                    "Termos e condições",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onTap: () {},
                )),
            Container(
              margin: EdgeInsets.only(top: 30, left: 15),
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Como cuidamos da sua privacidade",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(335, 45)),
                onPressed: () {},
                child: Text(
                  "Qualificar no Play Store",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 26),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Sugestões",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
