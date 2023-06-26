import 'dart:typed_data';

import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentErrorResponseModel.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentRequestModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:html' as html;

import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentValidResponseModel.dart';

class GetDocumentRepo {
  getDocument(GetDocumentRequest request) async{
    try{
      final res = await http.post(Uri.parse("https://apiuat.iifl.in//VirtualSignature/v2/GetDocument"), body: request.toJson(), headers: <String, String> {
        "Authorization" : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBcHBsaWNhdGlvbk5hbWUiOiJHTExPUyIsIlJlcXVlc3RlZEJ5IjoiQzE0MzExNiIsIk9zTmFtZSI6IkFuZHJvaWQiLCJBcHBWZXJzaW9uIjoiMS4wIiwibmJmIjoxNjg3Nzc2MzMzLCJleHAiOjE2ODc3Nzc1MzMsImlhdCI6MTY4Nzc3NjMzMywiaXNzIjoiTG9jYWxIb3N0IiwiYXVkIjoiR0xMT1MuQzE0MzExNi5BbmRyb2lkIn0.ZEM2DZAnkSkmDJh2iORj1r4PwGqQTklXmZcwpKoKg30",
        "Ocp-Apim-Subscription-Key": "0dff5568454f4a4eb668e25a225a3452"
      });

      var resbody = res.body;

      print(res.statusCode);

      if(res.statusCode == 200 && resbody.contains("Result")){
        print("resbody");
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

  void downloadFileWeb(String base64String, String mimeType, String ext) {
    final fileName = '${DateTime.now().millisecondsSinceEpoch}.$ext';
    Uint8List bytes = base64.decode(base64String);
    String base64Image =  "data:$mimeType;base64,${base64Encode(bytes)}";

    html.AnchorElement anchorElement = html.AnchorElement(href: base64Image);
    anchorElement.download = fileName;
    anchorElement.click();
  }
}