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

class GetDocumentValidResponse {
  String? transactionId;
  Result? result;

  GetDocumentValidResponse({this.transactionId, this.result});

  GetDocumentValidResponse.fromJson(Map<String, dynamic> json) {
    transactionId = json['TransactionId'];
    result =
    json['Result'] != null ? new Result.fromJson(json['Result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TransactionId'] = this.transactionId;
    if (this.result != null) {
      data['Result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  String? message;
  String? typeOfDocument;
  String? document;
  String? source;

  Result({this.message, this.typeOfDocument, this.document, this.source});

  Result.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    typeOfDocument = json['TypeOfDocument'];
    document = json['Document'];
    source = json['Source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['TypeOfDocument'] = this.typeOfDocument;
    data['Document'] = this.document;
    data['Source'] = this.source;
    return data;
  }
}

class GetDocumentErrorResponse {
  String? transactionId;
  List<Errors>? errors;

  GetDocumentErrorResponse({this.transactionId, this.errors});

  GetDocumentErrorResponse.fromJson(Map<String, dynamic> json) {
    transactionId = json['TransactionId'];
    if (json['Errors'] != null) {
      errors = <Errors>[];
      json['Errors'].forEach((v) {
        errors!.add(new Errors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TransactionId'] = this.transactionId;
    if (this.errors != null) {
      data['Errors'] = this.errors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Errors {
  String? code;
  Null? subStatusCode;
  Null? severity;
  String? message;

  Errors({this.code, this.subStatusCode, this.severity, this.message});

  Errors.fromJson(Map<String, dynamic> json) {
    code = json['Code'];
    subStatusCode = json['SubStatusCode'];
    severity = json['Severity'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Code'] = this.code;
    data['SubStatusCode'] = this.subStatusCode;
    data['Severity'] = this.severity;
    data['Message'] = this.message;
    return data;
  }
}
