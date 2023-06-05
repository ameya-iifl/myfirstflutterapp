import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Example"),),
      body: Center(
        child: Container(
          child: Image.asset('images/Alea_a1.png'),
        ),
      )
    );
  }
}
