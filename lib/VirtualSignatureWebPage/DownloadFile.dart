import 'dart:convert';
import 'dart:typed_data';
import 'dart:html' as html;

void downloadFileWeb(String base64String, String mimeType, String ext) {
  final fileName = '${DateTime.now().millisecondsSinceEpoch}.$ext';
  Uint8List bytes = base64.decode(base64String);
  String base64Image =  "data:$mimeType;base64,${base64Encode(bytes)}";

  html.AnchorElement anchorElement = html.AnchorElement(href: base64Image);
  anchorElement.download = fileName;
  anchorElement.click();
}