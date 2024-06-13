import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/infos.dart';
import '../components/footer.dart';


class ScholPage extends StatelessWidget {
  const ScholPage({super.key});

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
            child: Text("Etablissements scolaires et universitaires",
              style: TextStyle(
                  color: bleu,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img15.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img16.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img17.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img18.jpeg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img19.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img20.png', hauteur: 200, largeur: MediaQuery.of(context).size.width),
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
              InfosGrid(title: "UAC", description: "L'université d'Abomey-Calavi (UAC) est une université publique béninoise située dans la commune d'Abomey-Calavi, près de Cotonou, dans le sud du pays.", image: "img15.jpg"),
              InfosGrid(title: "CEG Le Plateau", description: "CEG Le Plateau est située proche de Marché de Womey et de la petite ville Godomey. Ce collège accueil pas mal d'élèves des alentours", image: 'img16.jpg'),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfosGrid(title: "Notre Dame \ndes Apôtre", description: "C'est un établissement d'enseignement secondaire privé béninois à vocation confessionnelle destiné aux jeunes filles.", image: "img17.jpg"),
              InfosGrid(title: "UATM GASA \nFormation", description: "L'Université africaine de technologie et de management est une université privée créée en 1992 au Bénin. UATM offre des formations en Électronique et l'Informatique de Gestion et dispose de filières composées de 16 unités.", image: "img18.jpeg"),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfosGrid(title: "Les Cours Sonou", description: "Les Cours Sonou (LCS) est une université privée bilingue au Bénin fondée en 2007 par Fabrice Sonou qui forment ses apprenants dans les disciplines de l’administration des entreprises, des relations internationales et des sciences politiques.", image: "img19.jpg"),
              InfosGrid(title: "CEG Godomey", description: "C'est un établissement secondaire public situé à Godomey , au Bénin . Cette école a été fondée en 1984 et est connue sous le nom d'école secondaire de Godomey . Depuis sa fondation elle accueille tous les élèves autour de Godomey et d'ailleurs.", image: "img20.png"),
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
