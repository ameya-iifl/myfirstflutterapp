import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/CommonWidgets.dart';

class VSTablet extends StatefulWidget {
  final String name, prospectNo;
  VSTablet({Key? key, required this.name, required this.prospectNo})
      : super(key: key);

  @override
  State<VSTablet> createState() => _VSTabletState();
}

class _VSTabletState extends State<VSTablet> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Image.asset("images_vs/logo.png"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 75, right: 75),
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      TextHeading(widget.name, 30),
                      SizedBox(
                        height: 20,
                      ),
                      TextParagraph(20),
                      SizedBox(
                        height: 20,
                      ),
                      ProspectIdAndNameDetailsContainer(widget.name, widget.prospectNo),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.centerStart,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 75.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 147,
                                    color: Colors.orange[100],
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 100,
                                          right: 20.0,
                                          top: 20,
                                          bottom: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextApplication(20),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TextContactEmail(20),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          DownloadPDF()
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              StepNumberContainer(147, 1),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            alignment: AlignmentDirectional.centerStart,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 75.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 147,
                                    color: Colors.purple[100],
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 100,
                                          right: 20.0,
                                          top: 20,
                                          bottom: 20),
                                      child: Column(
                                        children: [
                                          Flexible(
                                            child: TextConfirmIfYouRead(20)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              isChecked ? InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          isChecked = false;
                                                        });
                                                      },
                                                      child: Icon(Icons
                                                          .check_box_outlined),
                                                    ) : InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          isChecked = true;
                                                        });
                                                      },
                                                      child: Icon(Icons
                                                          .check_box_outline_blank_outlined),
                                                    ),
                                              SizedBox(width: 5.0,),
                                              Flexible(
                                                child: TextConfirmationToGenerateOTP(0)
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          GenerateOTPElevatedButton(20)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              StepNumberContainer(147, 2)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            alignment: AlignmentDirectional.centerStart,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 75.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 147,
                                    color: Colors.orange[100],
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 100,
                                          right: 20.0,
                                          top: 20,
                                          bottom: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Sign the agreement using OTP.",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                      color: Colors.white,
                                                      height: 25,
                                                      width: 150,
                                                      child: TextField()),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text("Submit OTP"),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.orange),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text("Did not receive OTP?",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text("Resend"),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.orange),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 147,
                                width: 147,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(147),
                                    child: Image.asset('images_vs/step3.png')),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'images_vs/right-banner.png',
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: double.infinity,
              color: Colors.indigo[900],
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Credit at sole discretion of IIFL Finance Ltd. T&C apply.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "© 2023 - IIFL Finance Ltd.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
