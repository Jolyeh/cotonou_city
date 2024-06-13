import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import '../theme/color.dart';
import '../components/menu.dart';
import '../components/slideItem.dart';
import '../components/footer.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          SizedBox(height: 10,),
          Container(
            height: 200,
            margin: EdgeInsets.all(10),
            child: AnotherCarousel(
              images: const[
                AssetImage("images/ctn1.jpg"),
                AssetImage("images/ctn2.jpg"),
                AssetImage("images/ctn3.jpeg"),
                AssetImage("images/ctn4.jpg"),
                AssetImage("images/ctn5.jpg"),
              ],
              borderRadius: true,
              boxFit: BoxFit.cover,
              dotSize: 6,
              indicatorBgPadding: 10,
              dotIncreasedColor: bleu,
            ),
          ),
          SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.all(10),
              child: Text("A propos de Cotonou",
                style: TextStyle(
                  color: bleu,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                textAlign: TextAlign.center,
              )
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(15),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage("images/img2.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 15, left: 15),
              child: Text("Cotonou est la capital économique et la plus grande ville du Bénin abritant de nombreux services gouvernementaux et diplomatiques. Cotonou est connu dans l'Afrique de l'Ouest pour son marché international de 20 hectares (Dantokpa), le plus grand marché de l'Afrique de l'Ouest, ses Zem et un marché secondaire Missèbo situé a quelques mètres du marché Dantokpa.",
                style: TextStyle(
                    fontSize: 16
                ),
                textAlign: TextAlign.justify,
              )
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: Text("Quelques lieux de Cotonou                                                ",
                  style: TextStyle(
                      color: bleu,
                      fontSize: 20
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SlideItem(image: "img8.jpg", hauteur: 120, largeur: MediaQuery.of(context).size.width),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SlideItem(image: "img10.jpg", hauteur: 120, largeur: MediaQuery.of(context).size.width/2-20),
                        SizedBox(width: 10,),
                        SlideItem(image: "img13.jpeg", hauteur: 120, largeur: MediaQuery.of(context).size.width/2-20),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    SlideItem(image: "img3.jpg", hauteur: 260, largeur: MediaQuery.of(context).size.width/2-20),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        SlideItem(image: "img18.jpeg", hauteur: 160, largeur: MediaQuery.of(context).size.width/2-20),
                        SizedBox(height: 10,),
                        SlideItem(image: "img24.jpg", hauteur: 90, largeur: MediaQuery.of(context).size.width/2-20),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Footer()
        ],
      ),
      drawer: Menu(),
    );
  }
}
