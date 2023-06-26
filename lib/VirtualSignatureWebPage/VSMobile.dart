import 'package:flutter/material.dart';

class VSMobile extends StatefulWidget {
  final String name, prospectNo;
  VSMobile({Key? key, required this.name, required this.prospectNo}) : super(key: key);

  @override
  State<VSMobile> createState() => _VSMobileState();
}

class _VSMobileState extends State<VSMobile> {
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
                      Text(
                        "Hi ${widget.name}!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "We are pleased to offer you an Loan from IIFL Finance. The details of your loan offer are given below:",
                          style:
                          TextStyle(fontSize: 19, color: Colors.black54)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Prospect ID",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "${widget.prospectNo}",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Customer Name",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "${widget.name}",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
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
                                  color: Colors.orange[100],
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 25,),
                                      Text(
                                        "Please read the application cum agreement form carefully.",
                                        style: TextStyle(
                                          fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Kindly, Contact digitalsupport@iifl.com in case of discrepancy.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.picture_as_pdf),
                                          SizedBox(width: 5,),
                                          InkWell(
                                              onTap: () {},
                                              child: Text(
                                                'My Loan Details',
                                                style: TextStyle(
                                                    color: Colors
                                                        .blue[700]),
                                              ))
                                        ],
                                      ),
                                      SizedBox(height: 10,)
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
                                  child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(147),
                                      child: Image.asset(
                                          'images_vs/step1.png')),
                                ),
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
                                  color: Colors.purple[100],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 25,),
                                      Text(
                                        "Please confirm if you have read, and accept the offer.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                        children: [
                                          isChecked
                                              ? InkWell(
                                            onTap: () {
                                              setState(() {
                                                isChecked =
                                                false;
                                              });
                                            },
                                            child: Icon(Icons
                                                .check_box_outlined),
                                          )
                                              : InkWell(
                                            onTap: () {
                                              setState(() {
                                                isChecked =
                                                true;
                                              });
                                            },
                                            child: Icon(Icons
                                                .check_box_outline_blank_outlined),
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            "I accept the details mentioned in the agreement and have understood the terms and conditions.",
                                            style: TextStyle(
                                              fontSize: 10,
                                                fontWeight:
                                                FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Generate OTP for Virtual Signature',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight:
                                              FontWeight.bold),
                                        ),
                                        style:
                                        ElevatedButton.styleFrom(
                                            backgroundColor:
                                            Colors.orange),
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
                                  child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(147),
                                      child: Image.asset(
                                          'images_vs/step2.png')),
                                ),
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
