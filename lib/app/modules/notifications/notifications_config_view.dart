import 'package:facebook_app/app/modules/drawe/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'notifications_controller.dart';

class NotificationsConfigView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    DrawerView().colorText("notifications");
    return Scaffold(
      drawer: DrawerView(),
      appBar: AppBar(
        title: Text(
          "Configurações de notificações",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: ListView(
          children: <Widget>[
            listBody(
                "Respostas a pergutas que fiz", controller.question, context),
            listBodyDialog(context),
            listBody("Novas Vendas", controller.newSale, context),
            listBody(
                "Envios entregues ao Correios", controller.correios, context),
            listBody("Ofertas e descontos", controller.ofertas, context),
            listBody("Anúncios", controller.anucio, context),
            listBody("Reclamações que fiz", controller.reclamacoes, context),
            listBody("Novas mensagens", controller.mensage, context),
            listBody("Mercado Crédito", controller.credito, context)
          ],
        ),
      ),
    );
  }

  Widget listBodyDialog(context) {
    return Container(
      color: Color.fromRGBO(21, 21, 21, 1),
      child: ListTile(
        onTap: () {
          dialog(context);
        },
        title: Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "Perguntas dos Compradores",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
              wordSpacing: 3,
              fontSize: 15.5,
            ),
          ),
        ),
        subtitle: Obx(
          () => Text(
            controller.group.toString(),
            style: TextStyle(
              color: Colors.white54,
              fontWeight: FontWeight.w500,
              wordSpacing: 3,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  void dialog(context) {
    Get.dialog(
      AlertDialog(
        backgroundColor: Theme.of(context).backgroundColor,
        content: SingleChildScrollView(
          child: Container(
            width: 1000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Perguntas dos compradores",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 3,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Obx(
                          () => Radio(
                            activeColor: Colors.blue,
                            value: controller.radio1.toString(),
                            groupValue: controller.group.toString(),
                            onChanged: (value) {
                              controller.group.value = value;
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Sempre",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 3,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 45,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Obx(
                            () => Radio(
                              activeColor: Colors.blue,
                              value: controller.radio2.toString(),
                              groupValue: controller.group.toString(),
                              onChanged: (value) {
                                controller.group.value = value;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              "Somente perguntas pendentes",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 3,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  height: 45,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Obx(
                          () => Radio(
                            activeColor: Colors.blue,
                            value: controller.radio3.toString(),
                            groupValue: controller.group.toString(),
                            onChanged: (value) {
                              controller.group.value = value;
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Nunca",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 3,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listBody(String text, RxBool valueNotification, context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10, top: 5),
      color: Color.fromRGBO(21, 21, 21, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
                wordSpacing: 3,
                fontSize: 15.5,
              ),
            ),
          ),
          Container(
            width: 55,
            child: Obx(
              () => Switch(
                inactiveTrackColor: Color.fromRGBO(234, 234, 234, 0.7),
                activeColor: Colors.blue,
                onChanged: (value) {
                  valueNotification.value = value;
                },
                value: valueNotification.isTrue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
