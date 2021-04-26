import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:get/get.dart';

import '../../../main.dart';
import 'help_controller.dart';

class HelpView extends GetView<HelpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'Contato',
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25, left: 20),
              child: Text(
                "Com o que podemos audar?",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "Compras",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            listBodyFirst("Administra e cancelar compras", context,
                subtitleBody:
                    "Pagar, rastrear envios, alterar, reclamar ou \ncancelar compras."),
            listBody("Devoluções e reembolsos", context,
                subtitleBody:
                    "Devolver um produto ou consultar por \nestorno de compra"),
            listBodyLast("Perguntas frequentes sobre compras", context),
            Container(
              margin: EdgeInsets.only(top: 35, left: 20),
              child: Text(
                "Vendas",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            listBodyFirst("Gerenciar vendas e anúncios", context,
                subtitleBody:
                    "Vendas, cobranças, envio, reclamações,\ndevoluções, anúncios e reputação."),
            listBodyLast("Perguntas frequentes sobre vendas", context),
            Container(
              margin: EdgeInsets.only(top: 35, left: 20),
              child: Text("Ajuda com sua conta",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            listBodyFirst("Configuração da minha conta", context),
            listBody("Segurança", context),
            listBodyLast("Acho que a minha conta está em perigo", context),
            Divider(),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget listBodyFirst(String title, context, {String subtitleBody}) {
    if (subtitleBody == null) {
      return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 25),
        decoration: BoxDecoration(
          color: Color.fromRGBO(21, 21, 21, 1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5),
          ),
        ),
        child: ListTile(
          onTap: () {},
          title: Container(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              title,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5),
            ),
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(21, 21, 21, 1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5),
          ),
        ),
        child: ListTile(
          onTap: () {},
          title: Container(
            padding: EdgeInsets.only(top: 20, bottom: 13, left: 5),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(bottom: 20, left: 5),
            child: Text(
              subtitleBody,
              style: TextStyle(
                  color: Colors.white54,
                  wordSpacing: 1,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5),
            ),
          ),
        ),
      );
    }
  }

  Widget listBody(String title, context, {String subtitleBody}) {
    if (subtitleBody == null) {
      return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 1),
        color: backgroundContainer,
        child: ListTile(
          onTap: () {},
          title: Container(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              title,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  wordSpacing: 1,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5),
            ),
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 1),
        color: backgroundContainer,
        child: ListTile(
          onTap: () {},
          title: Container(
            padding: EdgeInsets.only(top: 20, bottom: 13, left: 5),
            child: Text(
              title,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  wordSpacing: 1,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5),
            ),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(bottom: 20, left: 5),
            child: Text(
              subtitleBody,
              style: TextStyle(
                  color: Colors.white54,
                  wordSpacing: 1,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5),
            ),
          ),
        ),
      );
    }
  }

  Widget listBodyLast(title, context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 1),
      decoration: BoxDecoration(
        color: Color.fromRGBO(21, 21, 21, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
      child: ListTile(
        onTap: () {},
        title: Container(
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 5),
          child: Text(
            title,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5),
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
