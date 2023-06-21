import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstflutterapp/GetxPackage/MySimpleController.dart';

class GetxExample extends StatelessWidget {
  GetxExample({Key? key}) : super(key: key);

  var controller = Get.put(MySimpleController());
  // RxInt count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Reactive State Manager
            // Obx(() => Text(count.toString(), style: TextStyle(fontSize: 50),)),
            // Simple State Manager
            GetBuilder<MySimpleController>(
                builder: (value){
                  return Text(value.count.toString());
                }),
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
