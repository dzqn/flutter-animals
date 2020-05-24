import 'package:flutter/material.dart';
import 'package:ttaranimal/ui/widgets/animal_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
        flexibleSpace: FlexibleSpaceBar(
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
            )),
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate((index, context) {
        return Center(
          child: Wrap(
            spacing: 3.0,
            children: <Widget>[
              AnimalCard(
                animalImage: "http://clipart-library.com/images/pc78oEgRi.jpg",
                name: "Kaplan",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/8izn5e8rT.jpg",
                name: "Eşek",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/qcBo475Ri.jpg",
                name: "Yengeç",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/8iEKeMyia.png",
                name: "Arı",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/Biazn7Ai8.png",
                name: "Köpek",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/ATbrEEkT4.gif",
                name: "Eşek",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/kTMxba8Tj.png",
                name: "Fok",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/di9yezbi7.jpg",
                name: "Kaplan",
              ),
              AnimalCard(
                animalImage: "http://clipart-library.com/images/zTXerqRTB.png",
                name: "Maymun",
              ),
            ],
          ),
        );
      }, childCount: 1))
    ];
  }
}
