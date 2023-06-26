import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/VSDesktop.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/VSMobile.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/VSTablet.dart';

class VSResponsivePage extends GetResponsiveView{
  final String name, prospectNo;
  VSResponsivePage({Key? key, required this.name, required this.prospectNo}) : super(key: key);

  @override
  Widget? desktop() {
    // TODO: implement desktop
    return VSDesktop(name: this.name, prospectNo: this.prospectNo);
  }

  @override
  Widget? tablet() {
    // TODO: implement tablet
    return VSTablet(name: this.name, prospectNo: this.prospectNo);
  }

  @override
  Widget? phone() {
    // TODO: implement phone
    return VSMobile(name: this.name, prospectNo: this.prospectNo);
  }

}