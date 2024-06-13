import 'package:flutter/material.dart';
import '../theme/color.dart';

class DetailPage extends StatelessWidget {
  String? image, title, titlec, description;
  DetailPage({super.key, required this.title, required this.description, required this.image, required this.titlec});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$titlec',
          style: TextStyle(
            fontSize: 18
          ),
        ),
        backgroundColor: bleu,
        foregroundColor: blanc,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Image(image: AssetImage("images/$image"), height: 200,),
          Text("$titlec",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: bleu
            ),
          ),
          SizedBox(height: 10,),
          Text("$description",
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
