import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetDocumentRepo {
  getDocument(GetDocumentRequest request) async{
    try{
      var url = "https://apiuat.iifl.in/VirtualSignature/v2/GetDocument";
      final res = await http.post(Uri.parse(url), body: request, headers: <String, String> {
        "Ocp-Apim-Subscription-Key": "key"
      });

      var resbody = res.body;

      if(res.statusCode == 200 && resbody.contains("Result")){
        return GetDocumentValidResponse.fromJson(json.decode(resbody));
      }
      else{
        return GetDocumentErrorResponse.fromJson(json.decode(resbody));
      }
    }
    catch(ex){
      throw Exception(ex);
    }

  }
}