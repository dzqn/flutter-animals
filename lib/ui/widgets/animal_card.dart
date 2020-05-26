import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  //final BuildContext ctx;
  final String animalImage;
  final String name;

  AnimalCard({this.animalImage, this.name});

  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/animalDetail");
          },
          child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              height: 190,
              width: 190,
              child: buildAnimalCard()),
        ));
  }

  Card buildAnimalCard() {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildCarTopContainer(),
            buildCardCenterSizedBox(),
            buildCardBottomContainer()
          ],
        ));
  }

  SizedBox buildCardCenterSizedBox() {
    return SizedBox(
      height: 1,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Container buildCardBottomContainer() {
    return Container(
        child: Text(name,
            style: TextStyle(
                fontFamily: "CoveredByYourGrace",
                fontSize: 20,
                fontWeight: FontWeight.bold)));
  }

  Container buildCarTopContainer() {
    return Container(
      height: 90,
      child: Image.network(animalImage),
    );
  }
}
