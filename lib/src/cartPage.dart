import 'package:checking/button.dart';
import 'package:checking/modules/food.dart';
import 'package:checking/modules/shop.dart';
import 'package:checking/themes/colorse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //remove from cart
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    //this remove function come from shop.dart
    shop.removeFromCart(food); 
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text("My Cart"),
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  //get food from cart
                  final Food food = value.cart[index];
                  //get food name
                  final String foodName = food.name;
                  //get food price
                  final String foodprice = food.price;
                  //show ui
                  return Container(
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: secondaryColor,
                    ),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        foodprice,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () => removeFromCart(food, context),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red[400],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: MyButton(text: "Pay Now", onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
