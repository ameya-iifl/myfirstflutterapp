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
  dynamic? subStatusCode;
  dynamic? severity;
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