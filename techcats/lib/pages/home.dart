import 'package:flutter/material.dart';

import '../components/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
   Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("TechCatsLab")),
      drawer: new DrawerComponent(),
      body: new Center(
        child: new Text('HomePage',style: new TextStyle(fontSize: 35.0),),
      ),
    );
  }
}