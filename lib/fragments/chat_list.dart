import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  String s;

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Card(
                  child: new ListTile(
                    contentPadding: EdgeInsets.all(20.0),
                    leading: new CircleAvatar(
                      radius: 50.0,
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundImage: new NetworkImage(
                        "https://scontent.fdel19-1.fna.fbcdn.net/v/t1.0-9/553707_277527042354104_766387759_n.jpg?_nc_cat=111&_nc_ht=scontent.fdel19-1.fna&oh=dc2075e952f036e91f9a182e3c485f8b&oe=5CC1D829"),
                    ),
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Umesh",
                            style: new TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        new Text("Kumar",
                            style: new TextStyle(
                                color: Colors.brown, fontSize: 14.0)),
                      ],
                    ),
                    subtitle: new Container(
                      child: new Text(
                        "umesh.bsa@gmail.com\nAndroid Flutter Java, Team Lead, Mobcoder LLC, Seattle, USA",
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.purple,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
              ],
            ));
  }
}
