import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentRepo.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/GetDocumentRequestModel.dart';

TextHeading(String _name, double _fontSize) {
  return Text(
    "Hi $_name!",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: _fontSize),
  );
}

TextParagraph(double _fontSize) {
  return Text(
    "We are pleased to offer you an Loan from IIFL Finance. The details of your loan offer are given below:",
    style: TextStyle(fontSize: _fontSize, color: Colors.black54),
  );
}

ProspectIdAndNameDetailsContainer(String _name, String _prospectNo) {
  return Container(
    // width: double.infinity,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TableCustomerDetails(_name, _prospectNo),
      )
    ),
  );
}

TableCustomerDetails(String _name, String _prospectNo){
  return Table(
    // defaultColumnWidth: IntrinsicColumnWidth(),
    columnWidths: {
      0: IntrinsicColumnWidth(),
      1: IntrinsicColumnWidth(),
    },
    children: [
      TableRow(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
          child: Text(
            "Prospect ID",
            style: TextStyle(color: Colors.grey, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
          child: Text(
            "Customer Name",
            style: TextStyle(color: Colors.grey, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        )
      ]),
      TableRow(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
          child: Text(
            "$_prospectNo",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
          child: Text(
            "$_name",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ])
    ],
  );
}

TextApplication(double _fontSize) {
  return Text(
    "Please read the application cum agreement form carefully.",
    style: TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold),
  );
}

TextContactEmail(double _fontSize) {
  return Text(
    "Kindly, Contact digitalsupport@iifl.com in case of discrepancy.",
    style: TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold),
  );
}

DownloadPDF() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.picture_as_pdf),
      SizedBox(
        width: 5,
      ),
      InkWell(
          onTap: () {},
          child: Text(
            'My Loan Details',
            style: TextStyle(color: Colors.blue[700]),
          ))
    ],
  );
}

StepNumberContainer(double _radius, int _imageNo) {
  return Container(
    height: _radius,
    width: _radius,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
    ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        child: Image.asset('images_vs/step$_imageNo.png')),
  );
}

TextConfirmIfYouRead(double _fontSize) {
  return Text(
    "Please confirm if you have read, and accept the offer.",
    style: TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold),
  );
}

CheckedBox(bool _isChecked) {
  return Obx(() => InkWell(
        onTap: () {
          _isChecked = false;
        },
        child: Icon(Icons.check_box_outlined),
      ));
}

UncheckedBox(bool _isChecked) {
  return Obx(() => InkWell(
        onTap: () {
          _isChecked = true;
        },
        child: Icon(Icons.check_box_outline_blank_outlined),
      ));
}

TextConfirmationToGenerateOTP(double _fontSize) {
  return _fontSize == 0
      ? Text(
          "I accept the details mentioned in the agreement and have understood the terms and conditions.",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      : Text(
          "I accept the details mentioned in the agreement and have understood the terms and conditions.",
          style: TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold),
        );
}

GenerateOTPElevatedButton(double _fontSize) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      'Generate OTP for Virtual Signature',
      style: TextStyle(
          fontSize: _fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    ),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
  );
}
