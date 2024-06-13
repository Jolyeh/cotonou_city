import 'package:flutter/material.dart';
import '../pages/homePage.dart';
import '../theme/color.dart';

class SlideItem extends StatelessWidget {
  String? image;
  double? hauteur, largeur;
  SlideItem({super.key, required this.image, required this.hauteur, required this.largeur});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hauteur,
      width: largeur,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage("images/$image"),
              fit: BoxFit.cover
          )
      ),
    );
  }
}

class ItemSlide extends StatelessWidget {
  String? image, text;
  double? hauteur, largeur;
  ItemSlide({super.key, required this.image, required this.hauteur, required this.largeur, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hauteur,
      width: largeur,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/$image"),
              fit: BoxFit.cover
          )
      ),
      child: Container(
        margin: EdgeInsets.only(right: 15, left: 15, top: MediaQuery.of(context).size.height-200),
        child: Column(
          children: [
            Text("$text",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: blanc,
                fontSize: 22
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 150,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  },
                  child: Text("Explorer",
                    style: TextStyle(
                        color: blanc,
                        fontSize: 16
                    ),
                  ),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(blanc),side: MaterialStatePropertyAll(BorderSide(color: blanc)),
                  shape: MaterialStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(2))),
                  overlayColor: MaterialStatePropertyAll(Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

