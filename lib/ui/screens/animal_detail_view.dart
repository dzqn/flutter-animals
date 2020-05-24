import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimalDetailView extends StatefulWidget {
  AnimalDetailView({Key key}) : super(key: key);

  @override
  _AnimalDetailViewState createState() => _AnimalDetailViewState();
}

class _AnimalDetailViewState extends State<AnimalDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Selam"),
      ),
    );
  }
}
