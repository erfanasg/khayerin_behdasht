import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.lightGreen.shade400,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'مجتمع خیرین بهداشت و سلامت استان اصفهان امام هادی (ع)',
          style: TextStyle(fontSize: 15.0, color: Colors.white),
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
