import 'package:flutter/material.dart';
import 'package:ttaranimal/ui/screens/animal_detail_view.dart';
import 'package:ttaranimal/ui/screens/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomeView(),
          '/animalDetail': (BuildContext context) => AnimalDetailView()
        });
  }
}
