import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/Pages/intro_page.dart';
import 'package:sushi_restaurant_app/Pages/menu_page.dart';
import 'package:sushi_restaurant_app/models/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/intopage': (context) => const IntroPage(),
          '/menuepage': (context) => const MenuPage(),
        },
      ),
    );
  }
}

