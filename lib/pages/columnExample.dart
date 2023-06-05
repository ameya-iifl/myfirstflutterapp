import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("column page")
      ),
      body: Container(
        color: Colors.orange,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              child: const Center(
                child: Text('1'),
              ),
            ),
            Container(
              width: double.infinity,
                height: 80,
              color: Colors.blue,
              child: Center(
                child: Text('2'),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.green,
              child: Center(
                child: Text('3'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
