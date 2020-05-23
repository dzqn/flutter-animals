import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    color: Colors.white,
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
          return Center(
            child: Wrap(
              spacing: 3.0,
              children: <Widget>[
                getExpandedContainer(),
                getExpandedContainer(),
                getExpandedContainer(),
                getExpandedContainer(),
                getExpandedContainer(),
                getExpandedContainer(),
                getExpandedContainer(),
                getExpandedContainer(),
                getExpandedContainer(),
              ],
            ),
          );
        }, childCount: 1))
      ],
    ));
  }

  Expanded getExpandedContainer() {
    return Expanded(
        flex: 1,
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            height: 190,
            width: 190,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                elevation: 10.0,
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
                    Container(
                        child: Text("LEON",
                            style: TextStyle(
                                fontFamily: "IndieFlower",
                                fontSize: 20,
                                fontWeight: FontWeight.bold)))
                  ],
                ))));
  }
}
