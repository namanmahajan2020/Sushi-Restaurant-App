import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 61, 55),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset("lib/images/salmon_eggs.png"),
            ),
            const SizedBox(height: 25),
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Feel the taste of the most popular japanese food from anywhere and any time",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),
            const SizedBox(height: 25),
            MyButton(
              text: "Get Started",
              onTap: () {
                Navigator.pushNamed(context, '/menuepage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
