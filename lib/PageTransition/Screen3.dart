import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 3"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
            },
            child: Text("navigate"),
          ),
        ));
  }
}
