import 'package:checking/modules/shop.dart';
import 'package:checking/src/cartPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/homePage.dart';
import 'src/menuPage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Home(),
      routes: {
        "/intropages": (context) => const Home(),
        "/menupage": (context) =>const MenuPage(),
        "/cartpage": (context) => const CartPage()
      },
    );
  }
}
