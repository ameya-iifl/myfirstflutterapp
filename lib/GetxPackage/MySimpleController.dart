import 'package:get/get.dart';

class MySimpleController extends GetxController{
  int count = 0;

  void increment() {
    count++;
    update();
  }
}