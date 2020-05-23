import 'package:flutter/material.dart';

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
        home: Scaffold(
            body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "ANIMAL INTRODUCTION",
                    style: TextStyle(
                        fontFamily: "IndieFlower",
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  centerTitle: false,
                  background: Image.network(
                    "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/101654047/original/faf99cd3c06f13ec1fdfe57cebb3fa89a5852519/draw-cartoons-for-you.png",
                    fit: BoxFit.scaleDown,
                  )),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((index, context) {
              return Row(
                children: <Widget>[
                  getExpandedContainer(index),
                  getExpandedContainer(index)
                ],
              );
            }, childCount: 5))
          ],
        )));
  }

  Expanded getExpandedContainer(index) {
    return Expanded(
        flex: 1,
        child: Container(
            padding: EdgeInsets.all(5),
            height: 150,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 90,
                      child: Image.network(
                          "https://lh3.googleusercontent.com/proxy/t5uuOVzwrEoFHr_DhDJyQX59ftshzMLXxVsW3z0s_BbWHw8-iy-tsvt4zdPnJjqZEqV_HYRx-0crt-Q9XYRDSXki_leFAq0"),
                    ),
                    SizedBox(
                      height: 1,
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                    Container(child: Text("LEON"))
                  ],
                ))));
  }
}
