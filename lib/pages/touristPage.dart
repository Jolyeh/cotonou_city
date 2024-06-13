import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/infos.dart';
import '../components/footer.dart';

class TouristPage extends StatelessWidget {
  const TouristPage({super.key});

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
            child: Text("Sites Touristiques",
              style: TextStyle(
                color: bleu,
                fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img3.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img4.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img5.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img30.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img31.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
              ],
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.85,
              )
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfosGrid(title: "Amazone", image: 'img3.jpg', description: "Le Monument Amazone ou encore l'Amazone est une statue érigée en hommage aux Amazones du Dahomey et fabriquée en structure métallique avec une enveloppe en bronze, d'une hauteur de 30 m et pesant 150 tonnes, posée sur un tertre. Elle est installée sur l'esplanade des Amazones dans le 12è arrondissement de la ville de Cotonou au sud du Bénin",),
              InfosGrid(title: "Place des Martyrs", description: "La place du Souvenir, anciennement appelée Place des Martyrs, est située dans le quartier Haie Vive. Elle occupe l'angle entre la Rue 390 et la Route de l'aéroport. Le nom la place des martyrs a été donné au monument en l’honneur des sept Béninois qui ont péri lors de l’agression mercenaire contre le Bénin.", image: "img5.jpg"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfosGrid(title: "Plage Fidjrossè", description: "Cette longue plage, située dans Cotonou ,est accessible par la route du littoral .Elle est en cours d'aménagement avec des plantations de petits cocotiers en rangées qui , certes maîtront du temps mais les lieux s'avèrent agréables. Des restaurants agrémentent le Bord de mer et proposent toutes sortes de prestations.", image: "img31.jpg"),
              InfosGrid(title: "Etoile Rouge", description: "L’Étoile rouge, comme son nom l’indique, est un monument formé d'un cercle géant au centre duquel est dessiné une étoile à cinq branches peinte en rouge. À l’épicentre de l’étoile s’élève une tour surmontée par une statue d'un brave homme. Il a une arme à l’épaule, un fagot de bois dans la main gauche et une houe dans celle de droite.", image: "img4.jpg"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              InfosGrid(title: "La cathédrale", description: "La simplicité des lignes de la cathédrale l'apparente aux premiers sanctuaires chrétiens. De fait, le sanctuaire reprend le plan basilical à triple vaisseau qui caractérise les édifices antiques, par opposition au plan en croix latine qui s'est peu à peu généralisé au cours des siècles suivants", image: 'img30.jpg'),
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
