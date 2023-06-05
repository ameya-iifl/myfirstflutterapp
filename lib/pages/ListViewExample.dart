import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Colors.red,
                leading: Icon(Icons.add),
                title: Text("Hello"),
                subtitle: Text("Subtitle"),
                trailing: Icon(Icons.delete),
              ),
            );
          }),
    );
  }
}
