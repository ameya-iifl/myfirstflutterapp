import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myfirstflutterapp/pages/City_Weather/Model.dart';

class Repo{
   Future<Model?> getWeather(String? city) async{
    var url = "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2";
    final res = await http.get(Uri.parse(url));

    var resbody = res.body;

    try {
      if (res.statusCode == 200) {
        return Model.fromJson(json.decode(resbody));
      }
      else{
        throw Exception();
      }
    }
    catch (ex){
      throw Exception();
    }
  }
}