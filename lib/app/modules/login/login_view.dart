import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20,bottom: 100),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 100,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/mercadolivre.png"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 30),
                  child: Text(
                    "Fazer Login",
                    style: TextStyle(color: Colors.blue,fontSize: 23),
                  ),
                ),
                Container(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: true,
                    autocorrect: true,
                    controller: controller.email,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: controller.password,
                    decoration: InputDecoration(
                      hintText: "Senha",
                      hintStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(1000, 50),
                    ),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () async {
                      await controller.loginUser();
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 50),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Esqueceu a senha?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 6),
                                child: Text(
                                  "Não tem conta?",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.toNamed("/register");
                                    },
                                    child: Text(
                                      "Cadastre-se",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Ou faça Login com",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (await controller.signWithGoogle() != null) {
                        controller.googleSign();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 80),
                          child: ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (Rect bounds) {
                              return RadialGradient(
                                center: Alignment.bottomRight,
                                radius: 1.3,
                                colors: <Color>[
                                  Colors.blue,
                                  Colors.green,
                                  Colors.yellow,
                                  Colors.red,
                                ],
                              ).createShader(bounds);
                            },
                            child: FaIcon(FontAwesomeIcons.google),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Conecta pelo Google",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
