import 'package:checking/button.dart';
import 'package:checking/themes/colorse.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            Text(
              "Naheed's Kitchen",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "lib/images/ammikitchen.jpeg",
                  height: 300,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Taste of Food in Karachi",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              "Feel the taste of Karachi from anywhere in Karachi",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),
            SizedBox(height: 25),
            MyButton(
              text: "My Button",
              onTap: () {
                Navigator.pushNamed(context, "/menupage");
              },
            )
          ],
        ),
      ),
    );
  }
}
