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
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Colors.red,
      elevation: 20.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
      ),
    );
  }
}
