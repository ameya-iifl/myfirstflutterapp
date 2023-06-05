import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text("Screen 2"),
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
