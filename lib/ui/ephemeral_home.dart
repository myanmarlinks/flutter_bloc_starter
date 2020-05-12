import 'package:flutter/material.dart';

class EphemeralHome extends StatefulWidget {
  @override
  _EphemeralHomeState createState() => _EphemeralHomeState();
}

class _EphemeralHomeState extends State<EphemeralHome> {

  String _greeting = "Hello World";

  void _changeGreet(String greet) {
    setState(() {
      _greeting = greet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple BLoC Test"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Text(
                "$_greeting",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                    color: Colors.blueAccent,
                    child: Text(
                      "Howdy",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      _changeGreet("Howdy");
                    }
                ),
                FlatButton(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                    color: Colors.green,
                    child: Text(
                      "What's up!",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      _changeGreet("What's up!");
                    }
                ),
                FlatButton(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                    color: Colors.red,
                    child: Text(
                      "You're Rock!",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      _changeGreet("You're Rock!");
                    }
                ),
              ],
            )
          ],
        )
    );
  }
}
