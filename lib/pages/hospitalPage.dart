import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/infos.dart';
import '../components/footer.dart';


class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

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
            child: Text("Centre de santé et Hôpitaux",
              style: TextStyle(
                  color: bleu,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img21.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img22.jpeg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img23.jpg', hauteur: 200, largeur: MediaQuery.of(context).size.width),
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
              InfosGrid(title: "CNHU-HKM", description: "Le Centre national hospitalier et universitaire Hubert Koutoukou Maga (CNHU-HKM), créé le 30 octobre 1962 sous le mandat du président Hubert Maga, est le principal centre de santé implanté à Cotonou, la capitale économique du Bénin.", image: "img21.jpg"),
              InfosGrid(title: "CHU-mel", description: "Le Centre hospitalier et universitaire de la mère et de l'enfant lagune de Cotonou (CHU-mel), est un hôpital béninois spécialisé dans la santé maternelle et infantile. cet hôpital est un centre de référence dans le domaine de la santé et essentiellement dédié à la mère et à l'enfant.", image: "img23.jpg"),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              InfosGrid(title: "Centre de santé \nAnastasis ", description: "Situé dans la grande banlieue ouest de Cotonou, ce centre de santé ne désemplit toujours pas. Malgré leurs multiples occupations, le directeur et ses collègues prennent le temps de prendre bien soins de leurs patients", image: "img22.jpeg"),
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
