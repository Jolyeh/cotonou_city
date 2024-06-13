import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/newsWidget.dart';
import '../components/footer.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
            child: Text("Actualités",
              style: TextStyle(
                  color: bleu,
                  fontSize: 25
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text("Retrouver les derniers évènements qui ont eu lieu dans la commune de Cotonou",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
          ),
          SizedBox(height: 20,),
          CarouselSlider(
              items: [
                SlideItem(image: 'img27.png', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img28.png', hauteur: 200, largeur: MediaQuery.of(context).size.width),
                SlideItem(image: 'img29.png', hauteur: 200, largeur: MediaQuery.of(context).size.width),
              ],
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.85,
              )
          ),
          SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                NewsWidget(
                    title: "Vers un nouveau p...",
                    titlec: "Vers un nouveau partenariat entre la Marie de Cotonou et le Port",
                    description: "Sur invitation du Directeur Général du Port Autonome de Cotonou (PAC), Luc Sètondji ATROKPO, "
                        "Maire de la ville de Cotonou accompagné d'une délégation composée des membres du Conseil de Supervison, du Chef du 5ème arrondissement, "
                        "des cadres techniques de la Mairie, se sont rendus au siège de l'institution portuaire ce mardi 23 avril 2024 dans le cadre d'un nouveau partenariat.",
                    image: "img27.png"
                ),
                NewsWidget(
                    title: "Des moyens roulan...",
                    titlec: "Des moyens roulants offerts aux services techniques de la mairie de Cotonou",
                    description: "Depuis son avènement à la tête de la commune de Cotonou, le maire Luc Sètondji ATROKPO a mis un point d'honneur à la diplomatie "
                        "municipale, à travers la coopération décentralisée. Cette ambition a permis de nouer des partenariats avec plusieurs villes, "
                        "dont l'un des plus importants est celui avec la Communauté d'Agglomération Seine-Eure (CASE).",
                    image: "img28.png"
                ),
                NewsWidget(
                    title: "Construction d'infra..",
                    titlec: "Construction d'infrastructures sociocommunautaires à Cotonou",
                    description: "Cotonou la ville vitrine du Bénin connait depuis quelques années, une transformation grâce aux efforts du gouvernement à travers la construction d’infrastructures d’envergures. "
                        "S’inscrivant dans cette même dynamique l’exécutif municipal avec à sa tête le Maire Luc Sètondji ATROKPO, s’est engagé à doter Cotonou d’infrastructures sociaux communautaires majeures telles que des gares routières, "
                        "des écoles, des marchés secondaires, des aires de jeux etc… Pour concrétiser cette ambition l’autorité municipale a opté pour la Maîtrise "
                        "d’Ouvrage Déléguée (MOD) afin de disposer d’infrastructures de qualité dans les délais requis. Dans ce cadre la Société Immobilière et d’Aménagement Urbain (SImAU) s’est vu confier la réalisation de certains projets.",
                    image: "img29.png"
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text("Les articles récents",
            style: TextStyle(
                fontSize: 20,
                color: bleu
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          TextButton(
              onPressed: () {
              },
              child: Text("Examen du Certificat de Qualification aux Métiers (CQM), session d’avril 2024",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
          ),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {
              },
              child: Text("Municipalité de Cotonou : Des orientations qui façonneront l'avenir de la ville de Cotonou.",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
          ),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {
              },
              child: Text("Examen du Certificat de Qualification aux Métiers (CQM), session d’avril 2024",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
          ),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {
              },
              child: Text("Municipalité de Cotonou: Grandes décisions du Conseil Municipal au titre de l'année 2024 du d'avr...",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
          ),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {
              },
              child: Text("Radio Cotonou: 94.3 officiellement autorisée à diffuser ses programmes pour le plaisir des auditeurs",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
          ),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {
              },
              child: Text("Centre de santé de Djominhountin à Cotonou La maternité complètement refectionnée et dotée d'équipements",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
          ),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {
              },
              child: Text("Construction de nouveaux modules de classes par la mairie de Cotonou",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
          ),
          SizedBox(height: 20,),
          Footer()
        ],
      ),
      drawer: Menu(),
    );
  }
}
