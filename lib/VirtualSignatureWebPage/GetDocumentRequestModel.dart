import 'dart:convert';

class GetDocumentRequest {
  String? referenceNumber;
  String? isConsentTaken;
  String? uniqueIdentifier;

  GetDocumentRequest(
      {this.referenceNumber, this.isConsentTaken, this.uniqueIdentifier});

  GetDocumentRequest.fromJson(Map<String, dynamic> json) {
    referenceNumber = json['ReferenceNumber'];
    isConsentTaken = json['IsConsentTaken'];
    uniqueIdentifier = json['UniqueIdentifier'];
  }

  dynamic toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ReferenceNumber'] = this.referenceNumber;
    data['IsConsentTaken'] = this.isConsentTaken;
    data['UniqueIdentifier'] = this.uniqueIdentifier;
    return json.encode(data);
  }
}



