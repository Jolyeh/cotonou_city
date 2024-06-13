import 'package:flutter/material.dart';
import '../theme/color.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 15, right: 15),
      color: bleu,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Commune de Cotonou © 2024 - Tous les droits réservés",
            style: TextStyle(
                color: blanc,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Text("Mention légales",
            style: TextStyle(
                color: blanc
            ),
            textAlign: TextAlign.center,
          ),
          Text("Politique de confidentialité",
            style: TextStyle(
                color: blanc
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 5, width: MediaQuery.of(context).size.width/3-20, color: Colors.green,),
                Container(height: 5, width: MediaQuery.of(context).size.width/3-20, color: Colors.yellow,),
                Container(height: 5, width: MediaQuery.of(context).size.width/3-20, color: Colors.red,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
