import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Row Example'),
          ),
        body: Container(
          color: Colors.yellowAccent,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                      child: const Center(child: Text('1'),),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.white,
                      child: const Center(child: Text('2'),),),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.orange,
                      child: const Center(child: Text('3'),),
                    )
                  ]),
              SizedBox(height: 100,),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.orange,
                      child: const Center(child: Text('1'),),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.white,
                      child: const Center(child: Text('2'),),),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                      child: const Center(child: Text('3'),),
                    )
                  ]),
            ],
          ),
        )
    );
  }
}
