import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final String animalImage;
  final String name;

  AnimalCard({this.animalImage, this.name});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/animalDetail");
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          //height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.45,
          child: buildAnimalCard(context)),
    );
  }

  Card buildAnimalCard(BuildContext context) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildCarTopContainer(context),
            buildCardCenterSizedBox(),
            buildCardBottomContainer()
          ],
        ));
  }

  Widget buildCardCenterSizedBox() {
    return Divider(
      height: 15,
      color: Colors.white,
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

  Container buildCarTopContainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Image.network(animalImage),
    );
  }
}
