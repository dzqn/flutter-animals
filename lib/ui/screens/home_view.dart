import 'package:flutter/material.dart';
import 'package:ttaranimal/core/models/animal.dart' as animal;
import 'package:ttaranimal/ui/widgets/animal_card.dart';
import 'package:ttaranimal/core/services/animal_service.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final animalService = AnimalService.getAnimalInstance();
  List<animal.Animal> animalList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: _buildSliver(),
    ));
  }

  List<Widget> _buildSliver() {
    return <Widget>[
      SliverAppBar(
        expandedHeight: 200,
        floating: true,
        flexibleSpace: _getFexibleSpaceBar(),
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
        return FutureBuilder<List<animal.Animal>>(
            future: animalService.getAnimals(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  if (snapshot.hasData) {
                    animalList = snapshot.data;
                    return _getCards();
                  } else {
                    return Text("ERROR");
                  }
                  break;
                default:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }
            });
      }, childCount: 1))
    ];
  }

  FlexibleSpaceBar _getFexibleSpaceBar() {
    return FlexibleSpaceBar(
        title: Text(
          "HAYVANLARI TANIYALIM",
          style: TextStyle(
            fontFamily: "CoveredByYourGrace",
            color: Colors.white,
            //fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        background: Image.network(
          "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/101654047/original/faf99cd3c06f13ec1fdfe57cebb3fa89a5852519/draw-cartoons-for-you.png",
          fit: BoxFit.scaleDown,
        ));
  }

  Widget _getCards() {
    return Center(
      child: Wrap(
        spacing: 3.0,
        children: <Widget>[
          for (var item in animalList)
            AnimalCard(
              animalImage: item.image.cartoonImage,
              name: item.name,
            )
        ],
      ),
    );
  }
}
