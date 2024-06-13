import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/infos.dart';
import '../components/footer.dart';


class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

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
            child: Text("Marchés",
              style: TextStyle(
                  color: bleu,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img12.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img13.jpeg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img14.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
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
              InfosGrid(title: "Ganhi", description: "Ce marché de Ganhi , se situe dans ce que l'on peut appeler le centre ville de Cotonou à Xwlacodji entre les avenues Clozel et du Général Dodds.", image: "img13.jpeg"),
              InfosGrid(title: "Missèbo", description: "Le marché Missèbo est lieu de vente par excellence de vêtements et chaussures plus précisément des friperies que l'on appelle au Bénin soit les « venus de France » soit les « Atchouta » en langue fon.", image: "img14.jpg"),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              InfosGrid(title: "Dantokpa", description: "Encore appelé Tokpa, il est le plus grand marché à ciel ouvert d'Afrique de l'Ouest. Situé dans le 4e arrondissement de Cotonou, le marché Dantokpa, initialement construit sur 20 hectares.", image: "img12.jpg"),
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
