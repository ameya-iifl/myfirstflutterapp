import 'package:flutter/material.dart';

class ColouryExample extends StatefulWidget {
  const ColouryExample({Key? key}) : super(key: key);

  @override
  State<ColouryExample> createState() => _ColouryExampleState();
}

class _ColouryExampleState extends State<ColouryExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Coloury",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.network(
                    'https://assets.adidas.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/e9dbb0f4bfcd493e8618ae080164d385_9366/RUNNING_ADIGLIDE_SHOES_Turquoise_EY3064_01_standard.jpg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  child: Text(
                    "Detailed Product",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  child: Text(
                    "\$75.5",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.lightBlueAccent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Row(
                            children: [
                              Text("-"),
                              SizedBox(width: 10),
                              Text("1"),
                              SizedBox(width: 10),
                              Text("+"),
                            ],
                          ),
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {},
                        child: Text("Add to Cart"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}