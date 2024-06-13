import 'package:flutter/material.dart';
import 'pages/splashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cotonou City',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
