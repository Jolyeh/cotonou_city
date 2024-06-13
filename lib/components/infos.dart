import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/color.dart';

class InfosList extends StatelessWidget {
  String? image, title, description;
  InfosList({super.key, required this.title, required this.description, required this.image});

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
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        backgroundColor: bleu,
                        elevation: 10,
                        insetPadding: EdgeInsets.all(10),
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        title: Text('$title',
                          style: TextStyle(
                              fontSize: 20,
                            color: blanc
                          ),
                        ),
                        children: <Widget>[
                          Image(image: AssetImage("images/$image")),
                          SizedBox(height: 15,),
                          Container(
                            child: Text('$description',
                              style: TextStyle(
                                color: CupertinoColors.systemGrey3,
                                fontSize: 18
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            margin: EdgeInsets.only(left: 10, right: 10),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Lire la description",),
                style: ButtonStyle(
                    textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 14)),
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

class InfosGrid extends StatelessWidget {
  String? image, title, description;
  InfosGrid({super.key, required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,surfaceTintColor: bleu,
        child: Column(
          children: [
            Image(image: AssetImage("images/$image"), height: 100, width: MediaQuery.of(context).size.width/2-20, fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Text("$title",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 160,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        backgroundColor: bleu,
                        elevation: 10,
                        insetPadding: EdgeInsets.all(10),
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        title: Text('$title',
                          style: TextStyle(
                              fontSize: 20,
                              color: blanc
                          ),
                        ),
                        children: <Widget>[
                          Image(image: AssetImage("images/$image")),
                          SizedBox(height: 15,),
                          Container(
                            child: Text('$description',
                              style: TextStyle(
                                  color: CupertinoColors.systemGrey3,
                                  fontSize: 18
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            margin: EdgeInsets.only(left: 10, right: 10),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Lire la description",),
                style: ButtonStyle(
                    textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 14)),
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(2))),
                    backgroundColor: MaterialStatePropertyAll(bleu),
                    foregroundColor: MaterialStatePropertyAll(blanc)
                ),
              ),
            ),
          ],
        )
    );
  }
}

