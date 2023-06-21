import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstflutterapp/Navigation/Page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(name:'Ameya')));
            Get.to(Page2(name: "Ameya"));
          },
          child: Text('Navigate'),
        ),
      ),
    );
  }
}
