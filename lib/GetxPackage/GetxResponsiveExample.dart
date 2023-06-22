import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxResponsiveExample extends GetResponsiveView {

  @override
  Widget? phone() {
    return PhoneView();
  }

  @override
  Widget? tablet() {
    return TabletView();
  }

  @override
  Widget? desktop() {
    return DesktopView();
  }
}

class PhoneView extends StatelessWidget {
  const PhoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Phone View"),),
      backgroundColor: Colors.redAccent,
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tablet View"),),
      backgroundColor: Colors.yellow,
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Desktop View"),),
      backgroundColor: Colors.greenAccent,
    );
  }
}

