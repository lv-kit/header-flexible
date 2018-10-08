import 'package:flutter/material.dart';

class MyHomePageDetail extends StatefulWidget {
  MyHomePageDetail(this._title);
  final String _title;

  @override
  _MyHomePageDetailState createState() => _MyHomePageDetailState(_title);
}

class _MyHomePageDetailState extends State<MyHomePageDetail> {
  _MyHomePageDetailState(this._title);
  final String _title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Material App'),
      ),
      body: new Center(
        child: Text("$_title"),
      ),
    );
  }
}