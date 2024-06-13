import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/infos.dart';
import '../components/footer.dart';


class PharmaciePage extends StatelessWidget {
  const PharmaciePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bleu,
        foregroundColor: blanc,
        title: Text("La ville de Cotonou"),
        titleTextStyle: TextStyle(fontSize: 20),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Text("Pharmacies",
              style: TextStyle(
                  color: bleu,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img24.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img25.jpeg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img26.jpeg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
              ],
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.85,
              )
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfosGrid(title: "Sacré Cœur", description: "La pharmacie Sacré Cœur est située à Akpakpa. Cette pharmacie dispose que des produits cosmétiques qui sont naturelles et bio. Elle offre un accueil chaleureux. ", image: "img25.jpeg"),
              InfosGrid(title: "Les 4 Thérapies ", description: "Pharmacie des 4 therapies est une pharmacie situé sur Avenue de la paix, proche du centre commercial City Centre et de l'église Impact Centre Chrétien campus de Cotonou.", image: "img26.jpeg"),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              InfosGrid(title: "Camps Guezo", description: "La pharmacie Camps Guezo fait partie des meilleurs pharmacies de Cotonou. Elle est situé au cœur de la zone résidentielle de Cotonou et offre un accueil convivial.", image: "img24.jpg"),
            ],
          ),
          SizedBox(height: 25,),
          Footer()
        ],
      ),
      drawer: Menu(),
    );
  }
}
