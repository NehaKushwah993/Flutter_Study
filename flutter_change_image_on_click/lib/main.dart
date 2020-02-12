import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dice_number_1 = 1;
  var dice_number_2 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random Dice"),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.red,
            child: Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          onPressed: () {
                            changeImageOnDice();
                          },
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                              "dice_images/dice$dice_number_1.png"))),
                  Expanded(
                      child: FlatButton(
                          onPressed: () {
                            changeImageOnDice();
                          },
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                              "dice_images/dice$dice_number_2.png"))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changeImageOnDice() {
    setState(() {
      dice_number_1 = Random().nextInt(5) + 1;
      dice_number_2 = Random().nextInt(5) + 1;
    });
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(),
//        body: SafeArea(
//          child: Container(
//            color: Colors.blue,
//          ),
//        ),
//      ),
//    );
//  }
//}
