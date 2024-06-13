import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import '../theme/color.dart';
import 'flashPage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.5),
                width: 100,
                height: 100,
                child: CircleAvatar(backgroundImage: AssetImage('images/logo.jpeg'),),
              ),
              SizedBox(height: 10,),
              Text(
                "La ville de Cotonou",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        backgroundColor: bleu,
        splashIconSize: 2500,
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        nextScreen: FlashPage(),
    );
  }
}
