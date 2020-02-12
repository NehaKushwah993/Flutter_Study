import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Icon(
          Icons.phone,
          color: Colors.white,
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    print(" Clicked");
                  },
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.pinkAccent.shade700,
                    backgroundImage: AssetImage("img/diamond.png"),
                  ),
                ),
                Text(
                  "Heera",
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                    fontFamily: 'Lobster',
                  ),
                ),
                Text(
                  "hai sada k liye",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Sriracha',
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade400,
                      ),
                      title: Text("+91-888888888"),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal.shade900,
                    ),
                    title: Text("temp@temp.com"),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    return null;
  }
}
