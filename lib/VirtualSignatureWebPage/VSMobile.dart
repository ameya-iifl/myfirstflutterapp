import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstflutterapp/VirtualSignatureWebPage/CommonWidgets.dart';

class VSMobile extends GetResponsiveView {
  final String name, prospectNo;
  VSMobile({Key? key, required this.name, required this.prospectNo}) : super(key: key);

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Image.asset("images_vs/logo.png"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      TextHeading(this.name, 30),
                      SizedBox(
                        height: 20,
                      ),
                      TextParagraph(19),
                      SizedBox(
                        height: 20,
                      ),
                      ProspectIdAndNameDetailsContainer(this.name, this.prospectNo),
                      SizedBox(
                        height: 35,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 147,
                                  color: Colors.orange[100],
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 25,),
                                      TextApplication(15),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextContactEmail(15),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      DownloadPDF(),
                                      SizedBox(height: 10,)
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -25,
                                child: StepNumberContainer(50, 1),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 147,
                                  color: Colors.purple[100],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 25,),
                                      TextConfirmIfYouRead(15),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                        children: [
                                          // isChecked ? CheckedBox(isChecked) : UncheckedBox(isChecked) -- Not working
                                          isChecked ? CheckedBox(isChecked): UncheckedBox(isChecked),
                                          SizedBox(width: 5,),
                                          TextConfirmationToGenerateOTP(10),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      GenerateOTPElevatedButton(15),
                                      SizedBox(height: 10,),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -25,
                                child: StepNumberContainer(50, 2)
                              )
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  color: Colors.orange[100],
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sign the agreement using OTP",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight:
                                                FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
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
                                                    child: Text(
                                                        "Submit OTP",
                                                    style: TextStyle(fontSize: 10),),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                        backgroundColor:
                                                        Colors
                                                            .orange),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                      "Did not receive OTP?",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .bold)),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text("Resend",
                                                    style: TextStyle(fontSize: 10),),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                        backgroundColor:
                                                        Colors
                                                            .orange),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -25,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child:ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(50),
                                      child: Image.asset(
                                          'images_vs/step3.png')),
                                ),
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
