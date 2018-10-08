import 'package:flutter/material.dart';
import 'package:header_fix/homePageDetail.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Material App'),
      ),
      body: new Center(
        child: ListView(
          children: List.generate(10, (index) {
            return InkWell(
              child: Card(
                child: ListTile(
                  title: Text("child$index"),
                  leading: Icon(Icons.person),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePageDetail("child$index")));
              },
            );
          }),
        ),
      ),
    );
  }
}