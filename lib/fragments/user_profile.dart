import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          ),
          new Text(
            "Umesh Kumar",
            style: new TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          ),
          new Container(
            child: new CircleAvatar(
              radius: 90,
              backgroundImage: new NetworkImage(
                "https://scontent.fdel19-1.fna.fbcdn.net/v/t1.0-9/553707_277527042354104_766387759_n.jpg?_nc_cat=111&_nc_ht=scontent.fdel19-1.fna&oh=dc2075e952f036e91f9a182e3c485f8b&oe=5CC1D829",
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.all(20),
            child: new Text(
              "umesh.bsa@gmail.com\nAndroid Flutter Java,\nTeam Lead,\nMobcoder LLC, Seattle, USA",
              style: new TextStyle(
                fontSize: 18.0,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
