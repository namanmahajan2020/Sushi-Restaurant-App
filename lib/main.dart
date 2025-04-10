import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/Pages/intro_page.dart';
import 'package:sushi_restaurant_app/Pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intopage': (context) => const IntroPage(),
        '/menuepage': (context) => const MenuPage(),
      },
    );
  }
}
