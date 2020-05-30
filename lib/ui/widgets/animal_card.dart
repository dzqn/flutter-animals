import 'package:flutter/material.dart';
import 'package:ttaranimal/core/models/animal.dart' as animal;

class AnimalCard extends StatelessWidget {
  final animal.Animal currentAnimal;

  AnimalCard({this.currentAnimal});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/animalDetail", arguments: currentAnimal);
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
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
        child: Text(currentAnimal.name,
            style: TextStyle(
                fontFamily: "CoveredByYourGrace",
                fontSize: 20,
                fontWeight: FontWeight.bold)));
  }

  Container buildCarTopContainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Image.network(currentAnimal.image.cartoonImage),
    );
  }
}
