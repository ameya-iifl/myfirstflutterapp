import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/pages/City_Weather/Model.dart';
import 'package:myfirstflutterapp/pages/City_Weather/repo.dart';

class CityPage extends StatefulWidget {
  const CityPage({Key? key}) : super(key: key);

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  TextEditingController controller = TextEditingController();
   Model? model;
   var repoObject = Repo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App"),),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(
                onPressed: () async{
                  model = await repoObject.getWeather(controller.text);
                  setState(() {

                  });
                },
                child: Text("Search")),
            SizedBox(height: 20,),
            // FutureBuilder(
            //   future: repoObject.getWeather(controller.text),
            //     builder: (context, snapShot){
            //     print("Hello");
            //     if(snapShot.hasData){
            //       return Column(
            //         children: [
            //           Text("Temperature: ${snapShot.data?.main?.temp}"),
            //           Text("Min Temperature: ${snapShot.data?.main?.tempMin}"),
            //           Text("Max Temperature: ${snapShot.data?.main?.tempMax}")
            //         ],
            //       );
            //     }
            //     else{
            //       return CircularProgressIndicator();
            //     }
            //     }
            // )
            Column(
              children: [
                Text("Temperature: ${model?.main?.temp}"),
                Text("Min Temperature: ${model?.main?.tempMin}"),
                Text("Max Temperature: ${model?.main?.tempMax}")
              ],
            ),
      ]
      ),
    )
    );
  }
}
