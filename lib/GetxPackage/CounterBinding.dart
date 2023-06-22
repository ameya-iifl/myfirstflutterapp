import 'package:get/get.dart';
import 'package:myfirstflutterapp/GetxPackage/CountController.dart';

class CountBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CountController());
  }
}