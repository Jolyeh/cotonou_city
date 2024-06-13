import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../components/slideItem.dart';

class FlashPage extends StatefulWidget {
  const FlashPage({super.key});

  @override
  State<FlashPage> createState() => _FlashPageState();
}

class _FlashPageState extends State<FlashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: [
            ItemSlide(image: "ctn1.jpg", hauteur: MediaQuery.of(context).size.height, largeur: MediaQuery.of(context).size.width, text: "Cotonou est la capital économique et la plus grande ville du Bénin",),
            ItemSlide(image: "img8.jpg", hauteur: MediaQuery.of(context).size.height, largeur: MediaQuery.of(context).size.width, text: "Cotonou est  une grande ville portuaire située sur côte sud du Bénin",),
            ItemSlide(image: "img6.jpg", hauteur: MediaQuery.of(context).size.height, largeur: MediaQuery.of(context).size.width, text: "Cotonou abrite plusieurs monuments et infrastructures de haute niveau",),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            autoPlay: true,
            viewportFraction: 1
          )
      ),
    );
  }
}

