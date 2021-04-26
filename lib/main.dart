import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/controller/connection.dart';
import 'app/routes/app_pages.dart';


final Connection connectFirebase = Connection();
const backgroundContainer = Color.fromRGBO(21, 21, 21, 1);


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configLoading();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(Builder(
    builder: (BuildContext context) => GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.aleoTextTheme(
          Theme.of(context).textTheme,
        ),
        canvasColor: Color.fromRGBO(245, 245, 217, 1),
        primaryColor: Color.fromRGBO(245, 245, 217, 1),
        backgroundColor: Color.fromRGBO(33, 33, 32, 1),
        unselectedWidgetColor: Colors.white,
        appBarTheme: AppBarTheme(
          shadowColor: Colors.transparent,
            elevation: 0,
            backgroundColor: Color.fromRGBO(69, 49, 0, 1),
            textTheme: TextTheme(
              headline6: TextStyle(
                  color: Color.fromRGBO(245, 245, 217, 1),
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.4
              ),
            ),
            iconTheme: IconThemeData(color: Colors.white),
            titleSpacing: 0),
        hintColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    ),
  ));
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = Duration(milliseconds: 200)
    ..backgroundColor = Colors.black87
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..indicatorSize = 45
    ..dismissOnTap = false
    ..maskColor = Colors.black87
    ..textColor = Colors.white
    ..userInteractions = false;
}
