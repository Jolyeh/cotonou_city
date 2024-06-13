import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../pages/detailPage.dart';

class NewsWidget extends StatelessWidget {
  String? image, title, titlec, description;
  NewsWidget({super.key, required this.title, required this.description, required this.image, required this.titlec});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,surfaceTintColor: bleu,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage("images/$image"), height: 100, width: 100,fit: BoxFit.cover,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("$title",
                style: TextStyle(
                    fontSize: 18,
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title: title, description: description, image: image, titlec: titlec,),));
                },
                child: Text("Lire l'article",),
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(2))),
                    backgroundColor: MaterialStatePropertyAll(bleu),
                    foregroundColor: MaterialStatePropertyAll(blanc)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
