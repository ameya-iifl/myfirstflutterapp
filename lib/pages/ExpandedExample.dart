import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Expanded Page"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellowAccent,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(flex: 10,child: Container(color: Colors.green,)),
                  Expanded(flex: 10,child: Container(color: Colors.white,)),
                  Expanded(flex: 10, child: Container(color: Colors.orange,))
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Row(
                children: [
                  Expanded(flex: 10, child: Container(color: Colors.orange,)),
                  Expanded(flex: 10,child: Container(color: Colors.white,)),
                  Expanded(flex: 10,child: Container(color: Colors.green,)),
                ],
              ),
            ),
          ],
        )
        // child: Row(
        //   children: [
        //     Expanded(flex: 1,child: Container(color: Colors.green,)),
        //     Expanded(flex: 2,child: Container(color: Colors.white,)),
        //     Expanded(flex: 1, child: Container(color: Colors.orange,))
        //   ],
        // ),
      ),
    );
  }
}
