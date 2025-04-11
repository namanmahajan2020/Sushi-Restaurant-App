import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/components/button.dart';
import 'package:sushi_restaurant_app/models/food.dart';
import 'package:sushi_restaurant_app/models/shop.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  void removeFromCart(Food food, BuildContext content) {
    final shop = content.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder:
          (context, value, child) => Scaffold(
            backgroundColor: primaryColor,
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Text("My Cart"),
              ),
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.cart.length,
                    itemBuilder: (context, index) {
                      final Food food = value.cart[index];
                      final String foodName = food.name;
                      final String foodPrice = food.price;
                      final String imagePath = food.imagePath;
                      return Container(
                        decoration: BoxDecoration(color: secondaryColor),
                        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: ListTile(
                          leading: Image.asset(imagePath),
                          title: Text(
                            foodName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            foodPrice,
                            style: TextStyle(color: Colors.grey[200]),
                          ),
                          trailing: IconButton(
                            onPressed: () => removeFromCart(food, context),
                            icon: Icon(Icons.delete, color: Colors.grey[300]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: MyButton(text: "Pay Now", onTap: () {}),
                ),
              ],
            ),
          ),
    );
  }
}
