import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myfirstflutterapp/Assignment/DiceExample.dart';
import 'package:myfirstflutterapp/GetxPackage/CountController.dart';
import 'package:myfirstflutterapp/GetxPackage/CounterBinding.dart';
import 'package:myfirstflutterapp/GetxPackage/Counter_app.dart';
import 'package:myfirstflutterapp/GetxPackage/GetxExample.dart';
import 'package:myfirstflutterapp/GetxPackage/GetxResponsiveExample.dart';
import 'package:myfirstflutterapp/Navigation/Page1.dart';
import 'package:myfirstflutterapp/PageTransition/Screen1.dart';
import 'package:myfirstflutterapp/Assignment/ColouryExample.dart';
import 'package:myfirstflutterapp/pages/City_Weather/CityPage.dart';
import 'package:myfirstflutterapp/pages/City_Weather/repo.dart';
import 'package:myfirstflutterapp/pages/HiveDBExample.dart';
import 'package:myfirstflutterapp/pages/ImageExample.dart';
import 'package:myfirstflutterapp/pages/RowExample.dart';
import 'package:myfirstflutterapp/pages/TabBarExample.dart';
import 'package:myfirstflutterapp/pages/columnExample.dart';
import 'package:myfirstflutterapp/pages/ListViewExample.dart';

import 'Assignment/SmithShoes.dart';
import 'Assignment/VirtualSignature.dart';
import 'Assignment/VirtualSignature2.dart';
import 'VirtualSignatureWebPage/VSDesktop.dart';
import 'VirtualSignatureWebPage/VSResponsive.dart';
import 'VirtualSignatureWebPage/VSTablet.dart';
import 'VirtualSignatureWebPage/VSMobile.dart';


// void main() async{
//   await Hive.initFlutter();
//   await Hive.openBox('MyBox');
//   runApp(MyApp());
// }


// Main function for Getx Counter App
// void main(){
//   // Get.lazyPut(()=>CountController());
//   CountBinding().dependencies();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     String name = Uri.base.queryParameters['name'] ?? 'null';
//     print(name);
//     return GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/',
//     initialBinding: CountBinding(),
//     home: CounterApp(),
//     );
//   }
// }

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String name = Uri.base.queryParameters['name'] ?? "null";

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: VSDesktop(name: name,),
    );
  }
}
