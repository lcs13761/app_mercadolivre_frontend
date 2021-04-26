import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'abstract_controller.dart';

class AbstractView extends GetView<AbstractController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Resumo'),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 23),
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    title("Suas pendências", context),
                    listBodyFirst("Contatos para responder", context),
                    Container(
                      width: 1000,
                      padding: EdgeInsets.only(top: 23, bottom: 23, left: 15),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(21, 21, 21, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                      ),
                      child: Text(
                        "Nenhuma pergunta, mensagem nem reclamação \npara responder",
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    listBodyFirst("Vendas para preparar", context),
                    listBody("Vocẽ não tem vendas para preparar", context),
                    listBodyLast("ver vendas", context),
                    listBodyFirst("Anúncios", context),
                    listBody("Você não tem tarefas de anúncio.", context),
                    listBodyLast("ir para Anúncios", context),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: <Widget>[
                    title("Seu desempenho", context),
                    Container(
                      width: 1000,
                      padding: EdgeInsets.only(top: 23, bottom: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(21, 21, 21, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(7),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 23),
                            child: Text(
                              "Métricas de vendas",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 1,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          Container(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: Obx(
                                () => DropdownButton<String>(
                                  value: controller.values.toString(),
                                  dropdownColor:
                                      Theme.of(context).backgroundColor,
                                  icon: Container(),
                                  elevation: 16,
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 14),
                                  onChanged: (newValue) {
                                    controller.values.value = newValue;
                                  },
                                  items: <String>[
                                    "Hoje",
                                    "Útimos 7 dias",
                                    "Útimos 15 dias",
                                    "Útimos 30 dias"
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 90,
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 11.85,fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1000,
                      padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                      color: Color.fromRGBO(21, 21, 21, 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Faturamento bruto",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 1,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    "R\$ 0",
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        wordSpacing: 1,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    "0%",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        wordSpacing: 1,
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
                      width: 1000,
                      padding: EdgeInsets.only(top: 15, bottom: 5, left: 20),
                      color: Color.fromRGBO(21, 21, 21, 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Quantidade de vendas",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 1,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        wordSpacing: 1,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    "0%",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        wordSpacing: 1,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    listBodyLast("Ver todas as métricas", context),
                    //////
                  ],
                ),
              ),
              listBodyFirst("Novidades", context),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 5),
                color: Color.fromRGBO(21, 21, 21, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 20,
                      padding: EdgeInsets.only(left: 4, top: 5, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(9.5),
                        ),
                      ),
                      child: Text(
                        "IMPORTANTE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            wordSpacing: 1,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: Text(
                        "Agora, a última informaçao que você \nprecisa sabe esta em um só lugar",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1,
                            letterSpacing: 0.8),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color.fromRGBO(21, 21, 21, 1),
                child: ListTile(
                  title: Text(
                    "Agora, com o Flex você pode enviar \ntambém aos finais de semana",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                        letterSpacing: 0.7),
                  ),
                ),
              ),
              Container(
                color: Color.fromRGBO(21, 21, 21, 1),
                child: ListTile(
                  title: Text(
                    "Como adequar-se às mudanças nas regras \nfiscais da SEFAZ",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1,
                        letterSpacing: 0.6),
                  ),
                ),
              ),
              listBodyLast("Ver todas as novidades", context),
              listBodyFirst("Seu saldo no Mercado Pago", context),
              balance("Dinheiro em conta", "0", context, bold: FontWeight.w700),
              balance("Dinheiro disponivel", "0", context),
              balance("Dinheiro a liberar", "0", context),
              listBodyLast("Ver no Mercado Pago", context),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget balance(String text, value, context, {FontWeight bold}) {
    return Container(
      color: Color.fromRGBO(21, 21, 21, 1),
      child: ListTile(
        title: Container(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white54,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                wordSpacing: 1,
                letterSpacing: 0.6),
          ),
        ),
        subtitle: Container(
          child: Text(
            "R\$ " + value,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
                fontWeight: bold ?? FontWeight.w500,
                wordSpacing: 1,
                letterSpacing: 0.6),
          ),
        ),
      ),
    );
  }

  Widget title(String text, context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(bottom: 15),
      child: Text(
        text,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            wordSpacing: 1,
            letterSpacing: 0.5),
      ),
    );
  }

  Widget listBodyFirst(String text, context) {
    return Container(
      width: 1000,
      padding: EdgeInsets.only(top: 23, bottom: 20, left: 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(21, 21, 21, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(7),
          topRight: Radius.circular(7),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget listBody(String text, context) {
    return Container(
      width: 1000,
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
      color: Color.fromRGBO(21, 21, 21, 1),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white54,
          fontWeight: FontWeight.w300,
          fontSize: 12,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget listBodyLast(String text, context) {
    return Container(
      width: 1000,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(21, 21, 21, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(7),
          bottomRight: Radius.circular(7),
        ),
      ),
      child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 5, top: 5),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14,
                ),
              ),
            ],
          )),
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
