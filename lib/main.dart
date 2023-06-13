import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myfirstflutterapp/Assignment/DiceExample.dart';
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


// void main() async{
//   await Hive.initFlutter();
//   await Hive.openBox('MyBox');
//   runApp(MyApp());
// }

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VirtualSignature2(),
    );
  }
}
