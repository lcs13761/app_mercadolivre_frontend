import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

final FirebaseAuth validity = FirebaseAuth.instance;
dynamic text;

class DrawerView extends StatefulWidget {
  @override
  _DrawerViewState createState() => _DrawerViewState();

  void colorText(String texts) {
    text = texts;
  }
}

class _DrawerViewState extends State<DrawerView> {
  Map<String, dynamic> date;
  String name;
  String image;

  @override
  void initState() {
    super.initState();
    userData();
  }

  void userData() async {
    if(validity.currentUser != null){
      date = await FlutterSecureStorage().readAll();
      setState(() {
        if (name == null) {
          name = date["name"];
          List listName = this.name.split(" ");
          name = listName.first;
          name = name[0].toUpperCase() + name.substring(1).toLowerCase();
        }

        if (image == null) {
          image = date["image"];
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: 1.delay(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: Drawer(
              elevation: 0,
              child: ColoredBox(
                color: Color.fromRGBO(33, 33, 32, 1),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: validity.currentUser != null ? 150 : 180,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(69, 49, 0, 1),
                      ),
                      child: Builder(builder: (context) {
                        if (validity.currentUser == null) {
                          return loginAccount(context);
                        } else {
                          return userAccount(date: date);
                        }
                      }),
                    ),
                    buttonDrawer(
                      "Inicio",
                      context,
                      color: "home" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.home_outlined,
                      router: "/home",
                    ),
                    buttonDrawer(
                      "Buscar",
                      context,
                      color: "search" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.search_outlined,
                      router: "/search",
                    ),
                    validity.currentUser == null
                        ? Container()
                        : buttonDrawer(
                            "Notificações",
                            context,
                            color: "notifications" == text
                                ? Colors.blue
                                : Theme.of(context).primaryColor,
                            icon: Icons.notifications_none_outlined,
                            router: "/notifications",
                          ),
                    buttonDrawer(
                      "Minhas Compras",
                      context,
                      color: "my_Shop" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.work_outline,
                      login: true,
                      router: "/my-shopping",
                    ),
                    validity.currentUser == null
                        ? Container()
                        : buttonDrawer(
                            "Favoritos",
                            context,
                            color: "Bookmarks" == text
                                ? Colors.blue
                                : Theme.of(context).primaryColor,
                            icon: Icons.favorite_border_outlined,
                            router: "/bookmarks",
                          ),
                    validity.currentUser == null
                        ? Container()
                        : buttonDrawer(
                            "Oferta do dia",
                            context,
                            color: "Offer_of_the_day" == text
                                ? Colors.blue
                                : Theme.of(context).primaryColor,
                            icon: Icons.local_offer_outlined,
                            router: "/offer-of-the-day",
                          ),
                    validity.currentUser == null
                        ? Container()
                        : buttonDrawer(
                            "Mercado Crédito",
                            context,
                            color: "Credit_Market" == text
                                ? Colors.blue
                                : Theme.of(context).primaryColor,
                            icon: Icons.credit_card_outlined,
                            router: "/credit-market",
                          ),
                    validity.currentUser == null
                        ? Container()
                        : buttonDrawer(
                            "Assinaturas",
                            context,
                            color: "Subscriptions" == text
                                ? Colors.blue
                                : Theme.of(context).primaryColor,
                            icon: Icons.calendar_today_outlined,
                            router: "/subscriptions",
                          ),
                    buttonDrawer(
                      "Histórico",
                      context,
                      color: "historic" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.access_time_outlined,
                      router: "/historic",
                    ),
                    buttonDrawer(
                      "Minha Conta",
                      context,
                      color: "my_account" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.account_circle_outlined,
                      router: "/my-account",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Divider(
                        color: Color.fromRGBO(233, 233, 233, 0.5),
                      ),
                    ),
                    buttonDrawer(
                      "Resumo",
                      context,
                      color: "abstract" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.article_outlined,
                      login: true,
                      router: "/abstract",
                    ),
                    buttonDrawer(
                      "Vender",
                      context,
                      color: "sell" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.local_offer_rounded,
                      login: true,
                      router: "/sell",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Divider(
                        color: Color.fromRGBO(233, 233, 233, 0.5),
                      ),
                    ),
                    buttonDrawer(
                      "Categorias",
                      context,
                      color: "category" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.list_rounded,
                      router: "/category",
                    ),
                    buttonDrawer(
                      "Supermercado",
                      context,
                      color: "supermarket" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.shopping_basket_outlined,
                      router: "/supermarket",
                    ),
                    buttonDrawer(
                      "Moda",
                      context,
                      color: "fashion" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.article_outlined,
                      router: "/fashion",
                    ),
                    buttonDrawer(
                      "Lojas Oficiais",
                      context,
                      color: "official_stores" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.water_damage_outlined,
                      router: "/official-stores",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Divider(
                        color: Color.fromRGBO(233, 233, 233, 0.5),
                      ),
                    ),
                    buttonDrawer(
                      "Ajuda",
                      context,
                      color: "help" == text
                          ? Colors.blue
                          : Theme.of(context).primaryColor,
                      icon: Icons.help_outline_outlined,
                      login: true,
                      router: "/help",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Divider(
                        color: Color.fromRGBO(233, 233, 233, 0.5),
                      ),
                    ),
                    buttonDrawer(
                      "Sobre o Mercado Livre",
                      context,
                      color: Theme.of(context).primaryColor,
                      router: "/about",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Divider(
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget userAccount({Map<String, dynamic> date}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30, left: 40),
          child: Row(
            children: <Widget>[
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: image != null
                          ? NetworkImage(image)
                          : NetworkImage(
                              "https://img2.gratispng.com/20180721/css/kisspng-user-profile-computer-icons-droid-fonts-5b52eabf03fa92.1632882515321607030163.jpg"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                  child: TextButton(
                onPressed: () {},
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Olá, $name",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ],
    );
  }

  Widget loginAccount(context) {
    return Container(
      margin: EdgeInsets.only(top: 35, left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Entre na sua conta",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Veja os detalhes de envio e\npersonalize sua experiência",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.5),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            padding: EdgeInsets.only(top: 15),
            child: ElevatedButton(
              onPressed: () async {
                await EasyLoading.show(
                  status: "Carregando...",
                  maskType: EasyLoadingMaskType.custom,
                );
                await 0.5.delay();
                await EasyLoading.dismiss();
                Get.toNamed("/login");
              },
              style: ElevatedButton.styleFrom(minimumSize: Size(1000, 40)),
              child: Text("Entrar"),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonDrawer(String text, context,
      {IconData icon,bool login, router, Color color}) {
    return Container(
      height: 48,
      child: ListTile(
        onTap: () async {
          Get.back();
          await EasyLoading.show(
            status: "Carregando...",
            maskType: EasyLoadingMaskType.custom,
          );
          await 0.5.delay();
          if (validity.currentUser == null) {
            if (login == true) {
              Get.toNamed("/login");
            } else {
              Get.toNamed(router);
            }
          } else {
            Get.toNamed(router);
          }
          await EasyLoading.dismiss();

        },
        title: Row(
          children: <Widget>[
            if (icon != null)
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  icon,
                  size: 25,
                  color: color,
                ),
              ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                text,
                style: TextStyle(fontSize: 14.5, color: color),
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
