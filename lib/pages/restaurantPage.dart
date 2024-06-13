import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/infos.dart';
import '../components/footer.dart';


class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

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
            child: Text("Restaurants",
              style: TextStyle(
                  color: bleu,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img9.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img10.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img11.png', hauteur: 200, largeur: MediaQuery.of(context).size.width),
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
              InfosGrid(title: " Makoomba", description: "Ce restaurant Makoomba est situé dans la zone de l'aéroport, dans un quartier éloigne du centre. L'accueil est chaleureux et le service est bien ordonné.", image: "img9.jpg"),
              InfosGrid(title: "Face à la Mer", description: "Situé à Cotonou, à 1,7 km de la plage de Fidjrosse et à 34 km du musée d'histoire d'Ouidah, l'Appartement face à la plage dispose de la climatisation et offrant des services de qualités.", image: "img10.jpg"),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              InfosGrid(title: "La carbane du \nPêcheur ", description: " A l'écart du centre ville et avec une belle vue sur la plage, ce restaurant propose des plats de poissons principalement grillés qui sont tous délicieux.", image: "img11.png"),
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
