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