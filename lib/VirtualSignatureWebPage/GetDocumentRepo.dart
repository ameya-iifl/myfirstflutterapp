import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentErrorResponseModel.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentRequestModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentValidResponseModel.dart';

class GetDocumentRepo {
  getDocument(GetDocumentRequest request) async{
    try{
      var url = "https://apiuat.iifl.in/VirtualSignature/v2/GetDocument";
      final res = await http.post(Uri.parse(url), body: request, headers: <String, String> {
        "Token" : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBcHBsaWNhdGlvbk5hbWUiOiJHTExPUyIsIlJlcXVlc3RlZEJ5IjoiQzE0MzExNiIsIk9zTmFtZSI6IkFuZHJvaWQiLCJBcHBWZXJzaW9uIjoiMS4wIiwibmJmIjoxNjg3NzY0OTY4LCJleHAiOjE2ODc3NjYxNjgsImlhdCI6MTY4Nzc2NDk2OCwiaXNzIjoiTG9jYWxIb3N0IiwiYXVkIjoiR0xMT1MuQzE0MzExNi5BbmRyb2lkIn0.iJETyf0EcNNkpcQiSvCbGM2ozFY3lNHuhQd4yMGDZ4k",
        "Ocp-Apim-Subscription-Key": "0dff5568454f4a4eb668e25a225a3452"
      });

      var resbody = res.body;

      if(res.statusCode == 200 && resbody.contains("Result")){
        print(resbody);
        return GetDocumentValidResponse.fromJson(json.decode(resbody));
      }
      else{
        print("Error body");
        return GetDocumentErrorResponse.fromJson(json.decode(resbody));
      }
    }
    catch(ex){
      print("catch");
      throw Exception(ex);
    }

  }
}