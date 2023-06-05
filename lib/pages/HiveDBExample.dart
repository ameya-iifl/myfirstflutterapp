import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class HiveDBExample extends StatelessWidget {
  // const HiveDBExample({Key? key}) : super(key: key);

  var box = Hive.box("MyBox");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: Hive.box("MyBox").listenable(),
                builder: (context, box, _) {
                  return Text(box.get("name") ?? "null");
                }),
            ElevatedButton(
              onPressed: () {
                _insertData();
              },
              child: Text('Insert Data'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _retrieveData();
              },
              child: Text('Retrieve Data'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _updateData();
              },
              child: Text('Update Data'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _deleteData();
              },
              child: Text('Delete Data'),
            ),
          ],
        ),
      ),
    );
  }

  void _insertData() {
    box.put("name", "Ameya");
    print("Data Added");
  }

  void _retrieveData() {
    var name = box.get("name");
    print("Retrieved name: $name");
  }

  void _updateData() {
    box.put("name", "Shreeya");
    String x = box.get("name");
    print("Updated data: $x");
  }

  void _deleteData() {
    box.delete("name");
    print("Deleted");
  }
}
