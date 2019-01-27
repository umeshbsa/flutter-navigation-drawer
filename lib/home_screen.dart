import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer/fragments/chat_list.dart';
import 'package:flutter_navigation_drawer/fragments/settings.dart';
import 'package:flutter_navigation_drawer/fragments/user_profile.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomeScreen extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("User Profile", Icons.account_box),
    new DrawerItem("Chat List", Icons.chat),
    new DrawerItem("Settings", Icons.settings)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new UserProfile();
      case 1:
        return new ChatList();
      case 2:
        return new Settings();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Umesh Kumar"),
              accountEmail: new Text(  "umesh.bsa@gmail.com\nAndroid Flutter Java, Team Lead\nMobcoder LLC, Seattle, USA"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                  "https://scontent.fdel19-1.fna.fbcdn.net/v/t1.0-9/553707_277527042354104_766387759_n.jpg?_nc_cat=111&_nc_ht=scontent.fdel19-1.fna&oh=dc2075e952f036e91f9a182e3c485f8b&oe=5CC1D829"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundImage: new NetworkImage(
                    "https://scontent.fdel19-1.fna.fbcdn.net/v/t1.0-9/553707_277527042354104_766387759_n.jpg?_nc_cat=111&_nc_ht=scontent.fdel19-1.fna&oh=dc2075e952f036e91f9a182e3c485f8b&oe=5CC1D829",),
                )
              ],
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
