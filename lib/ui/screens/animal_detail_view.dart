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
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "KAPLAN",
                style: TextStyle(
                    fontFamily: "CoveredByYourGrace",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              background: Image.network(
                "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                fit: BoxFit.fill,
              )),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: <Widget>[
                getfirstContainer(context),
              ],
            );
          }, childCount: 1),
        )
      ],
    ));
  }

  Widget getfirstContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                      child: Text("YAŞAM SÜRESİ",
                          style: TextStyle(
                              fontFamily: "CoveredByYourGrace",
                              fontSize: 24,
                              fontWeight: FontWeight.bold))),
                  flex: 1,
                ),
                Container(
                  height: 50,
                  child: VerticalDivider(
                    width: 10,
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Text("AĞIRLIK",
                          style: TextStyle(
                              fontFamily: "CoveredByYourGrace",
                              fontSize: 24,
                              fontWeight: FontWeight.bold))),
                  flex: 1,
                )
              ],
            ),
            Divider(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                      child: Text(
                    "10-14 yıl",
                    style: TextStyle(fontSize: 20, fontFamily: "IndieFlower"),
                  )),
                  flex: 1,
                ),
                Container(
                  height: 50,
                  child: VerticalDivider(),
                ),
                Expanded(
                  child: Center(
                      child: Text("190 kg.",
                          style: TextStyle(
                              fontSize: 20, fontFamily: "IndieFlower"))),
                  flex: 1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
