import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/infos.dart';
import '../components/footer.dart';



class HotelPage extends StatelessWidget {
  const HotelPage ({super.key});

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
            child: Text("Hôtels",
              style: TextStyle(
                  color: bleu,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img6.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img7.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img8.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
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
              InfosGrid(title: "Palais de la Marina", description: "Cet hôtel confortable se trouve à Cotonou et comprend une connexion Internet sans fil gratuite, une piscine extérieure et un centre d'affaires ouvert 24h/24. Il offre une solution d'hébergement 3 étoiles avec des chambres disposant de la climatisation", image: "img6.jpg"),
              InfosGrid(title: "Novotel Orisha", description: "Cet hôtel 4,4 étoiles dispose d'une piscine extérieure, d'un restaurant et d'une connexion Wi-Fi gratuite. Ses chambres climatisées sont équipées d'une télévision à écran plat ainsi que d'un minibar. Le stationnement est gratuit. L'aéroport de Cotonou est situé à environ 5 km.", image: "img8.jpg"),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              InfosGrid(title: "Golden Tulip \nle Diplomate", description: " Cet hôtel à 4,4 étoiles offrele luxe, le confort, l'hospitalité et un mélange harmonieux d'élégance moderne.Très bon hôtel, proche de l'aéroport et du quartier des ambassades. Les chambres sont propres et spacieuses. Le buffet du petit déjeuner est très complet. ", image: "img7.jpg"),
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
