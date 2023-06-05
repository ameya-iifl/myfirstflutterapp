import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/PageTransition/Screen2.dart';
import 'package:page_transition/page_transition.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(seconds: 2),
                      child: Screen2()
                    )
                  );
                },
                child: Text("Left to Right")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(seconds: 2),
                          child: Screen2()
                      )
                  );
                },
                child: Text("Right to Left")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(seconds: 2),
                          child: Screen2()
                      )
                  );
                },
                child: Text("Faded")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: Duration(seconds: 2),
                          child: Screen2()
                      )
                  );
                },
                child: Text("Bottom To Top")),
          ],
        ),
      ),
    );
  }
}
