import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.grey,
      child: new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
          ),
          new Text("App version 1.0"),
          new Card(
            child: new Container(
              child: new Text(
                "About",
                style: new TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              width: double.infinity,
              padding: EdgeInsets.all(12),
            ),
            elevation: 5,
          ),
          new Card(
            child: new Container(
              child: new Text(
                "Terms & Condition",
                style: new TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              width: double.infinity,
              padding: EdgeInsets.all(12),
            ),
            elevation: 5,
          ),
          new Card(
            child: new Container(
              child: new Text(
                "Push Notification",
                style: new TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              width: double.infinity,
              padding: EdgeInsets.all(12),
            ),
            elevation: 5,
          ),
          new Card(
            child: new Container(
              child: new Text(
                "Logout",
                style: new TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              width: double.infinity,
              padding: EdgeInsets.all(12),
            ),
            elevation: 5,
          ),
        ],
      ),
    );
  }
}
