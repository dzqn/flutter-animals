import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  TestView({Key key}) : super(key: key);

  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text("Firs Data"),
      )),
    );
  }
}
