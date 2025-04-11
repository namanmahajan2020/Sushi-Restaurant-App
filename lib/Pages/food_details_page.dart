import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/models/food.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Image.asset(widget.food.iamgePath, height: 200),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[800]),
                      SizedBox(width: 5),
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.food.name +
                        " is a traditional Japanese dish made with vinegared rice, fresh seafood, and vegetables, often wrapped in seaweed. It's known for its delicate flavors, artistic presentation, and cultural significance.From vibrant sashimi to creative rolls, sushi turns every meal into an elegant and unforgettable experience.",
                    style: TextStyle(color: Colors.grey[600], height: 2),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(children: [Text("\$" + widget.food.price,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),)]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
