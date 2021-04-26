import 'package:facebook_app/app/controller/connection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = MaskedTextController(
      mask: "(##) #####-####", translator: {"#": RegExp(r'[0-9]')});
  final TextEditingController birth = MaskedTextController(
      mask: "##/##/####", translator: {"#": RegExp(r'[0-9]')});
  final TextEditingController password = TextEditingController();
  final register = GlobalKey<FormState>();
  final Connection conection = Connection();
  var uid;

  //metodo de inicializacao do registro do usuario
  void registerUser() async {

    await EasyLoading.show(
        status: "Carregando...", maskType: EasyLoadingMaskType.custom);
    await 1.delay();
    await EasyLoading.dismiss();
    if (name.text.isNotEmpty || name.text != null) {
      if (email.text.isNotEmpty || email.text != null) {
        if (phone.text.isNotEmpty || phone.text != null) {
          if (birth.text.isNotEmpty || birth.text != null) {
            if (!birthDate()) {
              dialog("Informe uma data valida");
              return;
            }
            if (password.text.isNotEmpty || password.text != null) {
              if (await registrationAccount()) {
                conection.createUser(
                    name.text, phone.text, birth.text, email.text, uid);
              }
              return;
            }
          }
        }
      }
    }
    dialog("Preencha todos os campos");
    //
  }

  //a mensagem informativa sobre possivel problema no cadastro
  void dialog(String message) {
   Get.dialog(
      AlertDialog(
        content: SingleChildScrollView(child: Text(message)),
        actions: <Widget>[
          Container(
            child: TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: Text("OK"),
            ),
          )
        ],
      ),
    );
  }

  //validacao da data
  bool birthDate() {
    var timeNow = DateTime(
        DateTime.now().year - 10, DateTime.now().month, DateTime.now().day);
    var birthDt = DateFormat("dd/MM/yyyy").parse(birth.text);
    return birthDt.isBefore(timeNow) || birthDt == timeNow;
  }

  //registro do usuario
  Future<bool> registrationAccount() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text);
      userCredential.user.updateProfile(displayName: name.text);
      if (!userCredential.user.emailVerified) {
        await userCredential.user.sendEmailVerification();
      }
      await FirebaseAuth.instance.signOut();
      uid = userCredential.user.uid;
      dialog("Um Email de confirmação foi enviado para você");
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'week-password') {
        dialog("A senha fornecida é muito fraca");
      } else if (e.code == 'email-already-in-use') {
        dialog("A conta já existe para esse e-mail.");
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
