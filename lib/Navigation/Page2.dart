import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/Navigation/Page3.dart';

class Page2 extends StatelessWidget {

  const Page2({Key? key, required String name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
          },
          child: Text('Navigate'),
        ),

      ),
    );
  }
}
