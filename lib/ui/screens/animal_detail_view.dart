import 'package:flutter/material.dart';
import 'package:ttaranimal/core/models/animal.dart' as animal;

class AnimalDetailView extends StatefulWidget {
  AnimalDetailView({Key key}) : super(key: key);

  @override
  _AnimalDetailViewState createState() => _AnimalDetailViewState();
}

class _AnimalDetailViewState extends State<AnimalDetailView> {
  animal.Animal _animal;
  @override
  Widget build(BuildContext context) {
    _animal = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(
                _animal.name,
                style: TextStyle(
                    fontFamily: "CoveredByYourGrace",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              background: Image.network(
                _animal.image.detailImage,
                fit: BoxFit.fill,
              )),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: <Widget>[
                getGeneralData(),
                getDoYouKnowData(),
                getDetailData()
              ],
            );
          }, childCount: 1),
        )
      ],
    ));
  }

  Widget getGeneralData() {
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
                      child: Text("Yaşam Süresi",
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
                      child: Text("Ağırlık",
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      _animal.smallDescription.lifeTime,
                      style: TextStyle(fontSize: 20, fontFamily: "IndieFlower"),
                    )),
                  ),
                  flex: 1,
                ),
                Container(
                  height: 50,
                  child: VerticalDivider(),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(_animal.smallDescription.weight,
                            style: TextStyle(
                                fontSize: 20, fontFamily: "IndieFlower"))),
                  ),
                  flex: 1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getDoYouKnowData() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(top: 10),
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            Text(
              "Biliyor muydun?",
              style: TextStyle(
                  fontFamily: "CoveredByYourGrace",
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _animal.mediumDescription,
                style: TextStyle(fontFamily: "IndieFlower", fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getDetailData() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            Text(
              "Detay",
              style: TextStyle(
                  fontFamily: "CoveredByYourGrace",
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _animal.detailDescription,
                style: TextStyle(fontFamily: "IndieFlower", fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
