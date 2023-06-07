import 'package:flutter/material.dart';

class SmithShoes extends StatefulWidget {
  const SmithShoes({Key? key}) : super(key: key);

  @override
  State<SmithShoes> createState() => _SmithShoesState();
}

class _SmithShoesState extends State<SmithShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "MEN'S COLLECTION",
              style: TextStyle(color: Colors.grey, fontSize: 10),
              children: <TextSpan>[
                TextSpan(
                    text: "\n Smiths Shoes",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ]),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.shopping_basket_sharp,
              color: Colors.black,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.network(
                          'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1c2dfd0c-cd48-46c4-829a-4b5d93f27f83/air-jordan-1-retro-high-og-shoes-Pz6fZ9.png',
                          height: 200,
                          width: 200),
                      Positioned(
                        bottom: 10,
                        right: 20,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                          shadows: [],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "A style icon gets some love from one of today's top trendsetters."
                    "Pharell Williams put his spin on these shoes, which have all the clean,"
                    "classic details of the beloved Stan Smith",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "COLOR",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.blue,
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 0),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 0),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.yellow,
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 0),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.pink,
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 0),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "10.21",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "ADD TO BAG+",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          ),
          Text(
            "\$95",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )
        ],
      ),
    );
  }
}
