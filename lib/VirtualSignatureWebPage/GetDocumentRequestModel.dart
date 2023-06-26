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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ReferenceNumber'] = this.referenceNumber;
    data['IsConsentTaken'] = this.isConsentTaken;
    data['UniqueIdentifier'] = this.uniqueIdentifier;
    return data;
  }
}



