import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class Connection {
  String _title;
  String _subtitle;
  String _description;
  String _urlImage;
  String _prince;
  var userValue;

  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  void createData(String name, String subtitle, String description,
      String image, String prince) {
    this._title = name;
    this._subtitle = subtitle;
    this._description = description;
    this._urlImage = image;
    this._prince = prince;

    Map<String, Object> dade = HashMap();
    dade["title"] = _title;
    dade["subtitle"] = _subtitle;
    dade["description"] = _description;
    dade["image"] = _urlImage;
    dade["prince"] = _prince;
  }

  void createUser(
      String name, String phone, String birthDate, String email, String uid,
      {String image}) {
    Map<String, Object> user = HashMap();
    user["name"] = name;
    user["phone"] = phone;
    user["birthDate"] = birthDate;
    user["email"] = email;
    user["image"] = image;
    if (db.collection("users").doc(uid) == null) {
      db.collection("users").doc(uid).set(user);
    }
  }
  Future<Map> userInitialized() async {
    if(FirebaseAuth.instance.currentUser != null ) {
      final storage = FlutterSecureStorage();
      DocumentSnapshot date = await FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser.uid)
          .get();
      await storage.write(key: "name", value: date["name"]);
      await storage.write(key: "image", value: date["image"]);
      return await storage.readAll();
    }else{
      return null;
    }
  }

  void logoff() async {
    await FirebaseAuth.instance.signOut();
  }
}
