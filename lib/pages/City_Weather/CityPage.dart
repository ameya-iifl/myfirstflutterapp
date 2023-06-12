import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/pages/City_Weather/Model.dart';
import 'package:myfirstflutterapp/pages/City_Weather/repo.dart';

class CityPage extends StatefulWidget {
  const CityPage({Key? key}) : super(key: key);

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
            ),
            ElevatedButton(onPressed: (){
              Future<Model> model = Repo().getWeather("mumbai");
              // print(model.main.temp)
            }, child: Text("Fetch")),
          ],
        ),
      ),
    );
  }
}
