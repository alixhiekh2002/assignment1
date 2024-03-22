import 'package:checking/modules/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatefulWidget {
  final Food food;
  final Function()? onTap;
  const FoodTile({super.key, required this.food, this.onTap});

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 25),
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              widget.food.imgPath,
              height: 140,
            ),
            //Text
            Text(
              widget.food.name,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 20,
              ),
            ),
            //price
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //text
                  Text(widget.food.price),
                  //rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Text(widget.food.rating)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
