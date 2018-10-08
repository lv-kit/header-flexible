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
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(_title),
              background: Container(
                color: Colors.green,
              ),
            ),
          )
        ],
      )
    );
  }
}