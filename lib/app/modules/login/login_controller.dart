import 'dart:async';

import 'package:facebook_app/app/controller/connection.dart';
import 'package:facebook_app/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final Connection connection = Connection();



  void googleSign() async{
   if( await signWithGoogle() != null){
     Get.offAllNamed(Routes.SPLASH);
   }else{
     dialogLogin("Erro ao fazer login");
   }

  }


  Future<UserCredential> signWithGoogle() async {
    try {
      await EasyLoading.show(
        status: "Carregando...",
        maskType: EasyLoadingMaskType.custom,
      );
      await 1.delay();

      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      connection.createUser(userCredential.user.displayName,
          userCredential.user.phoneNumber,
          "",
          userCredential.user.email,
          userCredential.user.uid,
          image: userCredential.user.photoURL
      );
      await EasyLoading.dismiss();
      return userCredential;
    } catch (e) {
      await EasyLoading.dismiss();
      return null;
    }
  }

  Future<bool> signEmail() async{
    try{
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text, password: password.text);

        if(!userCredential.user.emailVerified) {
          dialogLogin("confirme sua conta");
          await FirebaseAuth.instance.signOut();
        }
      return true;
    }on FirebaseAuthException catch(e){
          dialogLogin("Email ou senha errado");
          print(e);
          return false;
    }
  }

  Future<void> loginUser() async {
    await EasyLoading.show(
      status: "Carregando...",
      maskType: EasyLoadingMaskType.custom,
    );
    await 1.delay();
    await EasyLoading.dismiss();
    if ((email.text.isEmpty || email.text == null) ||
        (password.text.isEmpty || password.text == null)) {
      dialogLogin("Preencha todos os campos");
    } else {
      if(await signEmail()){
        Get.offAllNamed(Routes.SPLASH);
      }

    }
  }

  void dialogLogin(String message) {
    Get.dialog(
      AlertDialog(
        content: SingleChildScrollView(child: Text(message)),
        actions: <Widget>[
          Container(
            child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("OK"),
            ),
          )
        ],
      ),
    );
  }
}
