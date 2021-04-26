import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 37, 39, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(36, 37, 39, 1),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Form(
              key: controller.register,
              child: Column(
                children: <Widget>[
                  Container(
                    child: TextFormField(
                      controller: controller.name,
                      validator: (value) {
                        if (value.isEmpty || value == null) {
                          return "campo obrigatorio";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        hintText: "Nome",
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: controller.email,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: true,
                      enableSuggestions: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(hintText: "Email"),
                      validator: (value) {
                        if (value.isEmpty || value == null) {
                          return "campo obrigatorio";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: controller.phone,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        hintText: "Telefone",
                        counterText: "",
                      ),
                      maxLength: 15,
                      validator: (value) {
                        if (value.isEmpty || value == null) {
                          return "campo obrigatorio";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: controller.birth,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        counterText: "",
                        hintText: "Data de nascimento",
                      ),
                      validator: (value) {
                        if (value.isEmpty || value == null) {
                          return "campo obrigatorio";
                        }

                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: controller.password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autocorrect: false,
                      enableSuggestions: false,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(hintText: "Senha"),
                      validator: (value) {
                        if (value.isEmpty || value == null) {
                          return "campo obrigatorio";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        if (controller.register.currentState.validate()) {
                          
                          controller.registerUser();
                          //
                        }
                      },
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(1000, 50)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
