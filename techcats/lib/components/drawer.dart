import 'dart:convert' show json;

import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  @override
  _DrawerComponentState createState() => new _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/data/info.json"),
      builder: (context, snapshot) {
          Map data = json.decode(snapshot.data.toString());
          return new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text("${data['name']}", style: TextStyle(color: Colors.black)),
                  accountEmail: new Text("${data['github']}", style: TextStyle(color: Colors.black)),
                  currentAccountPicture: new GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: new ExactAssetImage('assets/images/logo.jpeg'),
                    ),
                  ),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new ExactAssetImage('assets/images/drawer_background.jpg'),
                    ),
                  ),
                ),
                new Divider(),
              ],
            ),
          );
      }, 
    );
  }
}