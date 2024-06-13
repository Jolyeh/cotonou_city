import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme/color.dart';
import '../pages/homePage.dart';
import '../pages/hospitalPage.dart';
import '../pages/hotelPage.dart';
import '../pages/marketPage.dart';
import '../pages/newsPage.dart';
import '../pages/pharmaciePage.dart';
import '../pages/restaurantPage.dart';
import '../pages/schoolPage.dart';
import '../pages/touristPage.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bleu,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/logo.jpeg"),radius: 30,
                    )
                ),
                SizedBox(width: 10,),
                Text("La ville de Cotonou",
                  style: TextStyle(
                    color: blanc,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            SizedBox(height: 35,),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.home),
                    SizedBox(width: 15),
                    Text("Acceuil")
                  ],
                ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TouristPage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.earth),
                  SizedBox(width: 15),
                  Text("Sites touristiques")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HotelPage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.hotel),
                  SizedBox(width: 15),
                  Text("Hôtels")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantPage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.cutlery),
                  SizedBox(width: 15),
                  Text("Restaurants")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MarketPage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.shop),
                  SizedBox(width: 15),
                  Text("Marchés")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScholPage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.mortarBoard),
                  SizedBox(width: 15),
                  Text("Etablisements scolaires")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalPage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.stethoscope),
                  SizedBox(width: 15),
                  Text("Hôpitals")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PharmaciePage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.handHoldingMedical),
                  SizedBox(width: 15),
                  Text("Pharmacies")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsPage(),));
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.newspaper),
                  SizedBox(width: 15),
                  Text("Actualités")
                ],
              ),
              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(blanc),),
            ),
          ],
        ),
      ),
    );
  }
}
