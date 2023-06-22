import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstflutterapp/GetxPackage/CountController.dart';

class CounterApp extends StatelessWidget {
  CounterApp({Key? key}) : super(key: key);

  var controller = Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(controller.count.value.toString(), style: TextStyle(fontSize: 50),)),
            ElevatedButton(onPressed: (){
                controller.increment();
              }
            , child: Text("Increment"))
          ],
        ),
      ),
    );
  }
}
