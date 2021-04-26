import 'package:facebook_app/app/controller/connection.dart';
import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:facebook_app/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';

import 'my_account_controller.dart';

class MyAccountView extends GetView<MyAccountController> {
  @override
  Widget build(BuildContext context) {
    DrawerView().colorText("my_account");
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Minha Conta'),
      ),
      drawer: DrawerView(),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(1000, 50),
                  primary: Color.fromRGBO(54, 113, 240, 1),
                ),
                child: Text(
                  "Vender",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      letterSpacing: 0.7),
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              color: Color.fromRGBO(233, 233, 233, 0.5),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
              child: Text(
                "Compras",
                style: TextStyle(color: Colors.white),
              ),
            ),
            listBody(Icons.mode_comment, "Perguntas", Colors.white),
            listBody(Icons.shopping_bag_sharp, "Minhas Compras", Colors.white),
            Divider(
              color: Color.fromRGBO(233, 233, 233, 0.5),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
              child: Text(
                "Vendas",
                style: TextStyle(color: Colors.white),
              ),
            ),
            listBody(Icons.receipt, "Resumo", Colors.white),
            listBody(Icons.loyalty, "Anúncios", Colors.white),
            listBody(Icons.network_cell, "Publicidade", Colors.white),
            listBody(Icons.messenger, "Perguntas", Colors.white),
            listBody(
                Icons.local_convenience_store_rounded, "Vendas", Colors.white),
            listBody(Icons.check_rounded, "Reputação", Colors.white),
            Divider(
              color: Color.fromRGBO(233, 233, 233, 0.5),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
              child: Text(
                "Configuração",
                style: TextStyle(color: Colors.white),
              ),
            ),
            controller.validity.currentUser == null
                ? Container()
                : Divider(
                    color: Color.fromRGBO(233, 233, 233, 0.5),
                  ),
            controller.validity.currentUser == null
                ? Container()
                : Container(
                    padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: Text(
                      "Faturamento",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
            controller.validity.currentUser == null
                ? Container()
                : listBody(Icons.assignment, "Faturamento", Colors.white),
            listBody(
              Icons.person,
              "Meus dados",
              Colors.white,
              colorContainer: Color.fromRGBO(200, 200, 200, 1),
            ),
            listBody(
              Icons.lock,
              "Segurança",
              Colors.white,
              colorContainer: Color.fromRGBO(200, 200, 200, 1),
            ),
            listBody(
              Icons.person_pin_circle,
              "Privacidade",
              Colors.white,
              colorContainer: Color.fromRGBO(200, 200, 200, 1),
            ),
            listBody(
              Icons.mail_rounded,
              "Comunicações",
              Colors.white,
              colorContainer: Color.fromRGBO(200, 200, 200, 1),
            ),
            listBody(
              Icons.settings,
              "Ajustes",
              Colors.white,
              colorContainer: Color.fromRGBO(200, 200, 200, 1),
            ),
            controller.validity.currentUser == null
                ? Container()
                : listBody(Icons.help_outline_rounded, "Contato", Colors.white,
                    colorContainer: Color.fromRGBO(200, 200, 200, 1)),
            Divider(
              color: Color.fromRGBO(233, 233, 233, 0.5),
            ),
            controller.validity.currentUser == null
                ? listBody(
                    Icons.person,
                    "Acessar o Mercado Livre",
                    Colors.white,
                    colorContainer: Color.fromRGBO(200, 200, 200, 1),
                  )
                : Container(
                    child: ListTile(
                      onTap: () {
                        dialog(context);
                      },
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(200, 200, 200, 1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          controller
                                              .validity.currentUser.displayName,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          controller.validity.currentUser.email,
                                          style: TextStyle(
                                              color: Colors.white,
                                              letterSpacing: 0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.power_settings_new_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  void dialog(context) {
    Get.dialog(
      AlertDialog(
        titlePadding: EdgeInsets.only(top: 15, left: 15, bottom: 0),
        actionsPadding: EdgeInsets.zero,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Container(
          width: 400,
          alignment: Alignment.centerLeft,
          child: Text(
            "Deseja sair da sua conta?",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).primaryColor,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent)),
              child: Text(
                "VOLTAR",
                style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () async {
                await EasyLoading.show(
                  status: "Carregando...",
                  maskType: EasyLoadingMaskType.custom,
                );
                await 1.delay();
                Connection().logoff();
                await EasyLoading.dismiss();
                Get.offAllNamed(Routes.SPLASH);
              },
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent)),
              child: Text(
                "SiM,SAIR",
                style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listBody(IconData icon, String title, Color color, {colorContainer}) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: () {
          controller.checkUser(title);
        },
        title: Row(
          children: <Widget>[
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: colorContainer ?? Color.fromRGBO(54, 113, 240, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icon,
                size: 17,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                title,
                style: TextStyle(color: color, letterSpacing: 0.5),
              ),
            ),
          ],
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
